
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ u8 ;
struct urb {int transfer_flags; } ;
struct if_usb_card {TYPE_2__* udev; int ep_out; struct urb* cmd_urb; struct urb* tx_urb; TYPE_1__* priv; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {scalar_t__ surpriseremoved; } ;


 int GFP_ATOMIC ;
 int LBTF_DEB_USB ;
 int URB_ZERO_PACKET ;
 int if_usb_write_bulk_callback ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_deb_usb2 (int *,char*) ;
 int lbtf_deb_usbd (int *,char*,...) ;
 int usb_fill_bulk_urb (struct urb*,TYPE_2__*,int ,int *,int ,int ,struct if_usb_card*) ;
 int usb_sndbulkpipe (TYPE_2__*,int ) ;
 scalar_t__ usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int usb_tx_block(struct if_usb_card *cardp, uint8_t *payload,
   uint16_t nb, u8 data)
{
 int ret = -1;
 struct urb *urb;

 lbtf_deb_enter(LBTF_DEB_USB);

 if (cardp->priv->surpriseremoved) {
  lbtf_deb_usbd(&cardp->udev->dev, "Device removed\n");
  goto tx_ret;
 }

 if (data)
  urb = cardp->tx_urb;
 else
  urb = cardp->cmd_urb;

 usb_fill_bulk_urb(urb, cardp->udev,
     usb_sndbulkpipe(cardp->udev,
       cardp->ep_out),
     payload, nb, if_usb_write_bulk_callback, cardp);

 urb->transfer_flags |= URB_ZERO_PACKET;

 if (usb_submit_urb(urb, GFP_ATOMIC)) {
  lbtf_deb_usbd(&cardp->udev->dev,
   "usb_submit_urb failed: %d\n", ret);
  goto tx_ret;
 }

 lbtf_deb_usb2(&cardp->udev->dev, "usb_submit_urb success\n");

 ret = 0;

tx_ret:
 lbtf_deb_leave(LBTF_DEB_USB);
 return ret;
}
