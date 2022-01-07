
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct mcba_usb_msg {int dummy; } ;
struct mcba_usb_ctx {int dummy; } ;
struct mcba_priv {int netdev; int udev; int tx_submitted; } ;
typedef int netdev_tx_t ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MCBA_USB_EP_OUT ;
 int MCBA_USB_TX_BUFF_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int mcba_usb_write_bulk_callback ;
 int memcpy (int *,struct mcba_usb_msg*,int ) ;
 int netdev_warn (int ,char*,int) ;
 int netif_device_detach (int ) ;
 scalar_t__ unlikely (int) ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct mcba_usb_ctx*) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static netdev_tx_t mcba_usb_xmit(struct mcba_priv *priv,
     struct mcba_usb_msg *usb_msg,
     struct mcba_usb_ctx *ctx)
{
 struct urb *urb;
 u8 *buf;
 int err;


 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb)
  return -ENOMEM;

 buf = usb_alloc_coherent(priv->udev, MCBA_USB_TX_BUFF_SIZE, GFP_ATOMIC,
     &urb->transfer_dma);
 if (!buf) {
  err = -ENOMEM;
  goto nomembuf;
 }

 memcpy(buf, usb_msg, MCBA_USB_TX_BUFF_SIZE);

 usb_fill_bulk_urb(urb, priv->udev,
     usb_sndbulkpipe(priv->udev, MCBA_USB_EP_OUT), buf,
     MCBA_USB_TX_BUFF_SIZE, mcba_usb_write_bulk_callback,
     ctx);

 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 usb_anchor_urb(urb, &priv->tx_submitted);

 err = usb_submit_urb(urb, GFP_ATOMIC);
 if (unlikely(err))
  goto failed;




 usb_free_urb(urb);

 return 0;

failed:
 usb_unanchor_urb(urb);
 usb_free_coherent(priv->udev, MCBA_USB_TX_BUFF_SIZE, buf,
     urb->transfer_dma);

 if (err == -ENODEV)
  netif_device_detach(priv->netdev);
 else
  netdev_warn(priv->netdev, "failed tx_urb %d\n", err);

nomembuf:
 usb_free_urb(urb);

 return err;
}
