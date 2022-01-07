
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct esd_usb2 {int rxinitdone; TYPE_2__* udev; int rx_submitted; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RX_URBS ;
 int RX_BUFFER_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int esd_usb2_read_bulk_callback ;
 int * usb_alloc_coherent (TYPE_2__*,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_2__*,int ,int *,int ,int ,struct esd_usb2*) ;
 int usb_free_coherent (TYPE_2__*,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (TYPE_2__*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int esd_usb2_setup_rx_urbs(struct esd_usb2 *dev)
{
 int i, err = 0;

 if (dev->rxinitdone)
  return 0;

 for (i = 0; i < MAX_RX_URBS; i++) {
  struct urb *urb = ((void*)0);
  u8 *buf = ((void*)0);


  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   err = -ENOMEM;
   break;
  }

  buf = usb_alloc_coherent(dev->udev, RX_BUFFER_SIZE, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   dev_warn(dev->udev->dev.parent,
     "No memory left for USB buffer\n");
   err = -ENOMEM;
   goto freeurb;
  }

  usb_fill_bulk_urb(urb, dev->udev,
      usb_rcvbulkpipe(dev->udev, 1),
      buf, RX_BUFFER_SIZE,
      esd_usb2_read_bulk_callback, dev);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  usb_anchor_urb(urb, &dev->rx_submitted);

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err) {
   usb_unanchor_urb(urb);
   usb_free_coherent(dev->udev, RX_BUFFER_SIZE, buf,
       urb->transfer_dma);
  }

freeurb:

  usb_free_urb(urb);
  if (err)
   break;
 }


 if (i == 0) {
  dev_err(dev->udev->dev.parent, "couldn't setup read URBs\n");
  return err;
 }


 if (i < MAX_RX_URBS) {
  dev_warn(dev->udev->dev.parent,
    "rx performance may be slow\n");
 }

 dev->rxinitdone = 1;
 return 0;
}
