
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct airspy {int urbs_initialized; int * dma_addr; TYPE_1__** urb_list; int * buf_list; int udev; int dev; } ;
struct TYPE_4__ {int transfer_dma; int transfer_flags; } ;


 int BULK_BUFFER_SIZE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MAX_BULK_BUFS ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int airspy_urb_complete ;
 int dev_dbg (int ,char*,int) ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct airspy*) ;
 int usb_free_urb (TYPE_1__*) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int airspy_alloc_urbs(struct airspy *s)
{
 int i, j;


 for (i = 0; i < MAX_BULK_BUFS; i++) {
  dev_dbg(s->dev, "alloc urb=%d\n", i);
  s->urb_list[i] = usb_alloc_urb(0, GFP_ATOMIC);
  if (!s->urb_list[i]) {
   for (j = 0; j < i; j++)
    usb_free_urb(s->urb_list[j]);
   return -ENOMEM;
  }
  usb_fill_bulk_urb(s->urb_list[i],
    s->udev,
    usb_rcvbulkpipe(s->udev, 0x81),
    s->buf_list[i],
    BULK_BUFFER_SIZE,
    airspy_urb_complete, s);

  s->urb_list[i]->transfer_flags = URB_NO_TRANSFER_DMA_MAP;
  s->urb_list[i]->transfer_dma = s->dma_addr[i];
  s->urbs_initialized++;
 }

 return 0;
}
