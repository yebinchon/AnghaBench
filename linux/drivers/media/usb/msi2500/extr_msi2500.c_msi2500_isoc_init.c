
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int interval; int transfer_flags; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ start_frame; struct msi2500_dev* context; int complete; int transfer_buffer_length; int * transfer_buffer; int transfer_dma; int pipe; int dev; } ;
struct msi2500_dev {struct urb** urbs; int dev; int udev; scalar_t__ isoc_errors; } ;
struct TYPE_2__ {int offset; int length; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ISO_BUFFER_SIZE ;
 int ISO_FRAMES_PER_DESC ;
 int ISO_MAX_FRAME_SIZE ;
 int MAX_ISO_BUFS ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int,...) ;
 int msi2500_isoc_cleanup (struct msi2500_dev*) ;
 int msi2500_isoc_handler ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_rcvisocpipe (int ,int) ;
 int usb_set_interface (int ,int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int msi2500_isoc_init(struct msi2500_dev *dev)
{
 struct urb *urb;
 int i, j, ret;

 dev_dbg(dev->dev, "\n");

 dev->isoc_errors = 0;

 ret = usb_set_interface(dev->udev, 0, 1);
 if (ret)
  return ret;


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  urb = usb_alloc_urb(ISO_FRAMES_PER_DESC, GFP_KERNEL);
  if (urb == ((void*)0)) {
   msi2500_isoc_cleanup(dev);
   return -ENOMEM;
  }
  dev->urbs[i] = urb;
  dev_dbg(dev->dev, "Allocated URB at 0x%p\n", urb);

  urb->interval = 1;
  urb->dev = dev->udev;
  urb->pipe = usb_rcvisocpipe(dev->udev, 0x81);
  urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
  urb->transfer_buffer = usb_alloc_coherent(dev->udev,
    ISO_BUFFER_SIZE,
    GFP_KERNEL, &urb->transfer_dma);
  if (urb->transfer_buffer == ((void*)0)) {
   dev_err(dev->dev,
    "Failed to allocate urb buffer %d\n", i);
   msi2500_isoc_cleanup(dev);
   return -ENOMEM;
  }
  urb->transfer_buffer_length = ISO_BUFFER_SIZE;
  urb->complete = msi2500_isoc_handler;
  urb->context = dev;
  urb->start_frame = 0;
  urb->number_of_packets = ISO_FRAMES_PER_DESC;
  for (j = 0; j < ISO_FRAMES_PER_DESC; j++) {
   urb->iso_frame_desc[j].offset = j * ISO_MAX_FRAME_SIZE;
   urb->iso_frame_desc[j].length = ISO_MAX_FRAME_SIZE;
  }
 }


 for (i = 0; i < MAX_ISO_BUFS; i++) {
  ret = usb_submit_urb(dev->urbs[i], GFP_KERNEL);
  if (ret) {
   dev_err(dev->dev,
    "usb_submit_urb %d failed with error %d\n",
    i, ret);
   msi2500_isoc_cleanup(dev);
   return ret;
  }
  dev_dbg(dev->dev, "URB 0x%p submitted.\n", dev->urbs[i]);
 }


 return 0;
}
