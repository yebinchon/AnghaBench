
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gp8psk_state {int data; } ;
struct dvb_usb_device {int usb_mutex; int udev; struct gp8psk_state* priv; } ;


 int EIO ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb_xfer (char*,int ,int ,int ) ;
 int debug_dump (int *,int,int (*) (char*,int ,int ,int )) ;
 int memcpy (int ,int *,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static int gp8psk_usb_out_op(struct dvb_usb_device *d, u8 req, u16 value,
        u16 index, u8 *b, int blen)
{
 struct gp8psk_state *st = d->priv;
 int ret;

 deb_xfer("out: req. %x, val: %x, ind: %x, buffer: ",req,value,index);
 debug_dump(b,blen,deb_xfer);

 if (blen > sizeof(st->data))
  return -EIO;

 if ((ret = mutex_lock_interruptible(&d->usb_mutex)))
  return ret;

 memcpy(st->data, b, blen);
 if (usb_control_msg(d->udev,
   usb_sndctrlpipe(d->udev,0),
   req,
   USB_TYPE_VENDOR | USB_DIR_OUT,
   value, index, st->data, blen,
   2000) != blen) {
  warn("usb out operation failed.");
  ret = -EIO;
 } else
  ret = 0;
 mutex_unlock(&d->usb_mutex);

 return ret;
}
