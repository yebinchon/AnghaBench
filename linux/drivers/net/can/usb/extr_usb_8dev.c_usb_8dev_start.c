
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int state; } ;
struct usb_8dev_priv {struct net_device* netdev; TYPE_1__ can; int udev; int rx_submitted; } ;
struct urb {int transfer_dma; int transfer_flags; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RX_URBS ;
 int RX_BUFFER_SIZE ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int USB_8DEV_ENDP_DATA_RX ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_warn (struct net_device*,char*,...) ;
 int netif_device_detach (struct net_device*) ;
 int usb_8dev_cmd_open (struct usb_8dev_priv*) ;
 int usb_8dev_read_bulk_callback ;
 int * usb_alloc_coherent (int ,int ,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct usb_8dev_priv*) ;
 int usb_free_coherent (int ,int ,int *,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int usb_8dev_start(struct usb_8dev_priv *priv)
{
 struct net_device *netdev = priv->netdev;
 int err, i;

 for (i = 0; i < MAX_RX_URBS; i++) {
  struct urb *urb = ((void*)0);
  u8 *buf;


  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   err = -ENOMEM;
   break;
  }

  buf = usb_alloc_coherent(priv->udev, RX_BUFFER_SIZE, GFP_KERNEL,
      &urb->transfer_dma);
  if (!buf) {
   netdev_err(netdev, "No memory left for USB buffer\n");
   usb_free_urb(urb);
   err = -ENOMEM;
   break;
  }

  usb_fill_bulk_urb(urb, priv->udev,
      usb_rcvbulkpipe(priv->udev,
        USB_8DEV_ENDP_DATA_RX),
      buf, RX_BUFFER_SIZE,
      usb_8dev_read_bulk_callback, priv);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  usb_anchor_urb(urb, &priv->rx_submitted);

  err = usb_submit_urb(urb, GFP_KERNEL);
  if (err) {
   usb_unanchor_urb(urb);
   usb_free_coherent(priv->udev, RX_BUFFER_SIZE, buf,
       urb->transfer_dma);
   usb_free_urb(urb);
   break;
  }


  usb_free_urb(urb);
 }


 if (i == 0) {
  netdev_warn(netdev, "couldn't setup read URBs\n");
  return err;
 }


 if (i < MAX_RX_URBS)
  netdev_warn(netdev, "rx performance may be slow\n");

 err = usb_8dev_cmd_open(priv);
 if (err)
  goto failed;

 priv->can.state = CAN_STATE_ERROR_ACTIVE;

 return 0;

failed:
 if (err == -ENODEV)
  netif_device_detach(priv->netdev);

 netdev_warn(netdev, "couldn't submit control: %d\n", err);

 return err;
}
