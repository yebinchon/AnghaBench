
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct net_device {int dummy; } ;
struct mcba_priv {int udev; int rx_submitted; struct net_device* netdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MCBA_MAX_RX_URBS ;
 int MCBA_USB_EP_IN ;
 int MCBA_USB_RX_BUFF_SIZE ;
 int MCBA_VER_REQ_CAN ;
 int MCBA_VER_REQ_USB ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int mcba_init_ctx (struct mcba_priv*) ;
 int mcba_usb_read_bulk_callback ;
 int mcba_usb_xmit_read_fw_ver (struct mcba_priv*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*) ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct mcba_priv*) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int mcba_usb_start(struct mcba_priv *priv)
{
 struct net_device *netdev = priv->netdev;
 int err, i;

 mcba_init_ctx(priv);

 for (i = 0; i < MCBA_MAX_RX_URBS; i++) {
  struct urb *urb = ((void*)0);
  u8 *buf;


  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   err = -ENOMEM;
   break;
  }

  buf = usb_alloc_coherent(priv->udev, MCBA_USB_RX_BUFF_SIZE,
      GFP_KERNEL, &urb->transfer_dma);
  if (!buf) {
   netdev_err(netdev, "No memory left for USB buffer\n");
   usb_free_urb(urb);
   err = -ENOMEM;
   break;
  }

  usb_fill_bulk_urb(urb, priv->udev,
      usb_rcvbulkpipe(priv->udev, MCBA_USB_EP_IN),
      buf, MCBA_USB_RX_BUFF_SIZE,
      mcba_usb_read_bulk_callback, priv);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  usb_anchor_urb(urb, &priv->rx_submitted);

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err) {
   usb_unanchor_urb(urb);
   usb_free_coherent(priv->udev, MCBA_USB_RX_BUFF_SIZE,
       buf, urb->transfer_dma);
   usb_free_urb(urb);
   break;
  }


  usb_free_urb(urb);
 }


 if (i == 0) {
  netdev_warn(netdev, "couldn't setup read URBs\n");
  return err;
 }


 if (i < MCBA_MAX_RX_URBS)
  netdev_warn(netdev, "rx performance may be slow\n");

 mcba_usb_xmit_read_fw_ver(priv, MCBA_VER_REQ_USB);
 mcba_usb_xmit_read_fw_ver(priv, MCBA_VER_REQ_CAN);

 return err;
}
