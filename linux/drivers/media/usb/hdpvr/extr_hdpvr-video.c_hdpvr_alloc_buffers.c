
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
struct urb {int transfer_flags; int transfer_dma; } ;
struct hdpvr_device {int free_buff_list; int bulk_in_size; int bulk_in_endpointAddr; int udev; int v4l2_dev; } ;
struct hdpvr_buffer {int buff_list; int status; struct urb* urb; struct hdpvr_device* dev; } ;


 int BUFSTAT_AVAILABLE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG_INFO ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int hdpvr_debug ;
 int hdpvr_free_buffers (struct hdpvr_device*) ;
 int hdpvr_read_bulk_callback ;
 int kfree (struct hdpvr_buffer*) ;
 struct hdpvr_buffer* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct hdpvr_buffer*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,scalar_t__) ;
 int v4l2_err (int *,char*) ;

int hdpvr_alloc_buffers(struct hdpvr_device *dev, uint count)
{
 uint i;
 int retval = -ENOMEM;
 u8 *mem;
 struct hdpvr_buffer *buf;
 struct urb *urb;

 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "allocating %u buffers\n", count);

 for (i = 0; i < count; i++) {

  buf = kzalloc(sizeof(struct hdpvr_buffer), GFP_KERNEL);
  if (!buf) {
   v4l2_err(&dev->v4l2_dev, "cannot allocate buffer\n");
   goto exit;
  }
  buf->dev = dev;

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb)
   goto exit_urb;
  buf->urb = urb;

  mem = usb_alloc_coherent(dev->udev, dev->bulk_in_size, GFP_KERNEL,
      &urb->transfer_dma);
  if (!mem) {
   v4l2_err(&dev->v4l2_dev,
     "cannot allocate usb transfer buffer\n");
   goto exit_urb_buffer;
  }

  usb_fill_bulk_urb(buf->urb, dev->udev,
      usb_rcvbulkpipe(dev->udev,
        dev->bulk_in_endpointAddr),
      mem, dev->bulk_in_size,
      hdpvr_read_bulk_callback, buf);

  buf->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  buf->status = BUFSTAT_AVAILABLE;
  list_add_tail(&buf->buff_list, &dev->free_buff_list);
 }
 return 0;
exit_urb_buffer:
 usb_free_urb(urb);
exit_urb:
 kfree(buf);
exit:
 hdpvr_free_buffers(dev);
 return retval;
}
