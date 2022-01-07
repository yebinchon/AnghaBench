
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int udev; } ;


 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb_data (char*,...) ;
 int debug_dump (int*,int,int (*) (char*,int,int)) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int dib0700_ctrl_wr(struct dvb_usb_device *d, u8 *tx, u8 txlen)
{
 int status;

 deb_data(">>> ");
 debug_dump(tx, txlen, deb_data);

 status = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev,0),
  tx[0], USB_TYPE_VENDOR | USB_DIR_OUT, 0, 0, tx, txlen,
  USB_CTRL_GET_TIMEOUT);

 if (status != txlen)
  deb_data("ep 0 write error (status = %d, len: %d)\n",status,txlen);

 return status < 0 ? status : 0;
}
