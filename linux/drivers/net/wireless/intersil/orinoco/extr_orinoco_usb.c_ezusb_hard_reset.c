
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {struct ezusb_priv* card; } ;
struct ezusb_priv {int udev; int dev; } ;


 int DEF_TIMEOUT ;
 int EZUSB_REQUEST_TRIGER ;
 int EZUSB_REQUEST_TRIG_AC ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dbg (char*) ;
 int err (char*,...) ;
 int ezusb_8051_cpucs (struct ezusb_priv*,int) ;
 int netdev_dbg (int ,char*) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int ezusb_hard_reset(struct orinoco_private *priv)
{
 struct ezusb_priv *upriv = priv->card;
 int retval = ezusb_8051_cpucs(upriv, 1);

 if (retval < 0) {
  err("Failed to reset");
  return retval;
 }

 retval = ezusb_8051_cpucs(upriv, 0);
 if (retval < 0) {
  err("Failed to unreset");
  return retval;
 }

 netdev_dbg(upriv->dev, "sending control message\n");
 retval = usb_control_msg(upriv->udev,
     usb_sndctrlpipe(upriv->udev, 0),
     EZUSB_REQUEST_TRIGER,
     USB_TYPE_VENDOR | USB_RECIP_DEVICE |
     USB_DIR_OUT, 0x0, 0x0, ((void*)0), 0,
     DEF_TIMEOUT);
 if (retval < 0) {
  err("EZUSB_REQUEST_TRIGER failed retval %d", retval);
  return retval;
 }
 return 0;
}
