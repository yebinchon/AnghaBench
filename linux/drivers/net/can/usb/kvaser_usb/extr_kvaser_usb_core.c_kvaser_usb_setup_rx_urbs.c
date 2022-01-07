
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct urb {int transfer_flags; void* transfer_dma; } ;
struct kvaser_usb {int rxinitdone; TYPE_2__* intf; void** rxbuf_dma; int ** rxbuf; int udev; int rx_submitted; TYPE_1__* bulk_in; } ;
typedef void* dma_addr_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int bEndpointAddress; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KVASER_USB_MAX_RX_URBS ;
 int KVASER_USB_RX_BUFFER_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_warn (int *,char*,...) ;
 int kvaser_usb_read_bulk_callback ;
 int * usb_alloc_coherent (int ,int ,int ,void**) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct kvaser_usb*) ;
 int usb_free_coherent (int ,int ,int *,void*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int kvaser_usb_setup_rx_urbs(struct kvaser_usb *dev)
{
 int i, err = 0;

 if (dev->rxinitdone)
  return 0;

 for (i = 0; i < KVASER_USB_MAX_RX_URBS; i++) {
  struct urb *urb = ((void*)0);
  u8 *buf = ((void*)0);
  dma_addr_t buf_dma;

  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   err = -ENOMEM;
   break;
  }

  buf = usb_alloc_coherent(dev->udev, KVASER_USB_RX_BUFFER_SIZE,
      GFP_KERNEL, &buf_dma);
  if (!buf) {
   dev_warn(&dev->intf->dev,
     "No memory left for USB buffer\n");
   usb_free_urb(urb);
   err = -ENOMEM;
   break;
  }

  usb_fill_bulk_urb(urb, dev->udev,
      usb_rcvbulkpipe
     (dev->udev,
      dev->bulk_in->bEndpointAddress),
      buf, KVASER_USB_RX_BUFFER_SIZE,
      kvaser_usb_read_bulk_callback, dev);
  urb->transfer_dma = buf_dma;
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  usb_anchor_urb(urb, &dev->rx_submitted);

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err) {
   usb_unanchor_urb(urb);
   usb_free_coherent(dev->udev,
       KVASER_USB_RX_BUFFER_SIZE, buf,
       buf_dma);
   usb_free_urb(urb);
   break;
  }

  dev->rxbuf[i] = buf;
  dev->rxbuf_dma[i] = buf_dma;

  usb_free_urb(urb);
 }

 if (i == 0) {
  dev_warn(&dev->intf->dev, "Cannot setup read URBs, error %d\n",
    err);
  return err;
 } else if (i < KVASER_USB_MAX_RX_URBS) {
  dev_warn(&dev->intf->dev, "RX performances may be slow\n");
 }

 dev->rxinitdone = 1;

 return 0;
}
