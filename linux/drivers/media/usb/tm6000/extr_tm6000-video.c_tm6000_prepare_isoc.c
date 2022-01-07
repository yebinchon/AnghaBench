
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {int number_of_packets; int transfer_flags; TYPE_5__* iso_frame_desc; int interval; int transfer_dma; } ;
struct tm6000_dmaqueue {int dummy; } ;
struct TYPE_9__ {int maxsize; TYPE_3__* endp; int bAlternateSetting; int bInterfaceNumber; } ;
struct TYPE_6__ {int max_pkt_size; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct tm6000_core {int urb_size; TYPE_4__ isoc_in; TYPE_1__ isoc_ctl; int udev; struct urb** urb_buffer; int * urb_dma; struct tm6000_dmaqueue vidq; } ;
struct TYPE_10__ {int offset; int length; } ;
struct TYPE_7__ {int bEndpointAddress; int bInterval; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TM6000_MAX_ISO_PACKETS ;
 int TM6000_NUM_URB_BUF ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int V4L2_DEBUG_QUEUE ;
 int dprintk (struct tm6000_core*,int ,char*,int,int,int,int,int) ;
 int kfree (struct urb**) ;
 void* kmalloc_array (int,int,int ) ;
 scalar_t__ tm6000_alloc_urb_buffers (struct tm6000_core*) ;
 int tm6000_err (char*) ;
 int tm6000_free_urb_buffers (struct tm6000_core*) ;
 int tm6000_ir_int_start (struct tm6000_core*) ;
 int tm6000_ir_int_stop (struct tm6000_core*) ;
 int tm6000_irq_callback ;
 int tm6000_uninit_isoc (struct tm6000_core*) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int,struct urb*,int,int ,struct tm6000_dmaqueue*) ;
 int usb_maxpacket (int ,int,int ) ;
 int usb_pipeout (int) ;
 int usb_rcvisocpipe (int ,int) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int tm6000_prepare_isoc(struct tm6000_core *dev)
{
 struct tm6000_dmaqueue *dma_q = &dev->vidq;
 int i, j, sb_size, pipe, size, max_packets;
 int num_bufs = TM6000_NUM_URB_BUF;
 struct urb *urb;


 tm6000_uninit_isoc(dev);

 tm6000_ir_int_stop(dev);

 usb_set_interface(dev->udev,
     dev->isoc_in.bInterfaceNumber,
     dev->isoc_in.bAlternateSetting);


 tm6000_ir_int_start(dev);

 pipe = usb_rcvisocpipe(dev->udev,
          dev->isoc_in.endp->desc.bEndpointAddress &
          USB_ENDPOINT_NUMBER_MASK);

 size = usb_maxpacket(dev->udev, pipe, usb_pipeout(pipe));

 if (size > dev->isoc_in.maxsize)
  size = dev->isoc_in.maxsize;

 dev->isoc_ctl.max_pkt_size = size;

 max_packets = TM6000_MAX_ISO_PACKETS;
 sb_size = max_packets * size;
 dev->urb_size = sb_size;

 dev->isoc_ctl.num_bufs = num_bufs;

 dev->isoc_ctl.urb = kmalloc_array(num_bufs, sizeof(void *),
       GFP_KERNEL);
 if (!dev->isoc_ctl.urb)
  return -ENOMEM;

 dev->isoc_ctl.transfer_buffer = kmalloc_array(num_bufs,
            sizeof(void *),
            GFP_KERNEL);
 if (!dev->isoc_ctl.transfer_buffer) {
  kfree(dev->isoc_ctl.urb);
  return -ENOMEM;
 }

 dprintk(dev, V4L2_DEBUG_QUEUE, "Allocating %d x %d packets (%d bytes) of %d bytes each to handle %u size\n",
      max_packets, num_bufs, sb_size,
      dev->isoc_in.maxsize, size);


 if (tm6000_alloc_urb_buffers(dev) < 0) {
  tm6000_err("cannot allocate memory for urb buffers\n");


  tm6000_free_urb_buffers(dev);
  kfree(dev->isoc_ctl.urb);
  kfree(dev->isoc_ctl.transfer_buffer);
  return -ENOMEM;
 }


 for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
  urb = usb_alloc_urb(max_packets, GFP_KERNEL);
  if (!urb) {
   tm6000_uninit_isoc(dev);
   tm6000_free_urb_buffers(dev);
   return -ENOMEM;
  }
  dev->isoc_ctl.urb[i] = urb;

  urb->transfer_dma = dev->urb_dma[i];
  dev->isoc_ctl.transfer_buffer[i] = dev->urb_buffer[i];

  usb_fill_bulk_urb(urb, dev->udev, pipe,
      dev->isoc_ctl.transfer_buffer[i], sb_size,
      tm6000_irq_callback, dma_q);
  urb->interval = dev->isoc_in.endp->desc.bInterval;
  urb->number_of_packets = max_packets;
  urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;

  for (j = 0; j < max_packets; j++) {
   urb->iso_frame_desc[j].offset = size * j;
   urb->iso_frame_desc[j].length = size;
  }
 }

 return 0;
}
