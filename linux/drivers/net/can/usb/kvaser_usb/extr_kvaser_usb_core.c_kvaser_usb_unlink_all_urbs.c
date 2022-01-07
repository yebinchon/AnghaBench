
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb_net_priv {int dummy; } ;
struct kvaser_usb {int nchannels; struct kvaser_usb_net_priv** nets; int * rxbuf_dma; int * rxbuf; int udev; int rx_submitted; } ;


 int KVASER_USB_MAX_RX_URBS ;
 int KVASER_USB_RX_BUFFER_SIZE ;
 int kvaser_usb_unlink_tx_urbs (struct kvaser_usb_net_priv*) ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void kvaser_usb_unlink_all_urbs(struct kvaser_usb *dev)
{
 int i;

 usb_kill_anchored_urbs(&dev->rx_submitted);

 for (i = 0; i < KVASER_USB_MAX_RX_URBS; i++)
  usb_free_coherent(dev->udev, KVASER_USB_RX_BUFFER_SIZE,
      dev->rxbuf[i], dev->rxbuf_dma[i]);

 for (i = 0; i < dev->nchannels; i++) {
  struct kvaser_usb_net_priv *priv = dev->nets[i];

  if (priv)
   kvaser_usb_unlink_tx_urbs(priv);
 }
}
