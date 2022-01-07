
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * usb_complete_t ;
struct hackrf_dev {int urbs_initialized; int * dma_addr; TYPE_1__** urb_list; int * buf_list; int udev; int dev; } ;
struct TYPE_4__ {int transfer_dma; int transfer_flags; } ;


 int BULK_BUFFER_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_BULK_BUFS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_dbg (int ,char*,int) ;
 int hackrf_urb_complete_in ;
 int hackrf_urb_complete_out ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,unsigned int,int ,int ,int *,struct hackrf_dev*) ;
 int usb_free_urb (TYPE_1__*) ;
 unsigned int usb_rcvbulkpipe (int ,int) ;
 unsigned int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int hackrf_alloc_urbs(struct hackrf_dev *dev, bool rcv)
{
 int i, j;
 unsigned int pipe;
 usb_complete_t complete;

 if (rcv) {
  pipe = usb_rcvbulkpipe(dev->udev, 0x81);
  complete = &hackrf_urb_complete_in;
 } else {
  pipe = usb_sndbulkpipe(dev->udev, 0x02);
  complete = &hackrf_urb_complete_out;
 }


 for (i = 0; i < MAX_BULK_BUFS; i++) {
  dev_dbg(dev->dev, "alloc urb=%d\n", i);
  dev->urb_list[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!dev->urb_list[i]) {
   for (j = 0; j < i; j++)
    usb_free_urb(dev->urb_list[j]);
   return -ENOMEM;
  }
  usb_fill_bulk_urb(dev->urb_list[i],
    dev->udev,
    pipe,
    dev->buf_list[i],
    BULK_BUFFER_SIZE,
    complete, dev);

  dev->urb_list[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
  dev->urb_list[i]->transfer_dma = dev->dma_addr[i];
  dev->urbs_initialized++;
 }

 return 0;
}
