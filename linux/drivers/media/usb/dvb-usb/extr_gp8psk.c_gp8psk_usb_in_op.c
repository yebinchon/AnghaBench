
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gp8psk_state {int data; } ;
struct dvb_usb_device {int usb_mutex; int udev; struct gp8psk_state* priv; } ;


 int EIO ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int deb_info (char*,int,int) ;
 int deb_xfer (char*,int ,int ,int ) ;
 int debug_dump (int *,int,int (*) (char*,int ,int ,int )) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static int gp8psk_usb_in_op(struct dvb_usb_device *d, u8 req, u16 value,
       u16 index, u8 *b, int blen)
{
 struct gp8psk_state *st = d->priv;
 int ret = 0,try = 0;

 if (blen > sizeof(st->data))
  return -EIO;

 if ((ret = mutex_lock_interruptible(&d->usb_mutex)))
  return ret;

 while (ret >= 0 && ret != blen && try < 3) {
  ret = usb_control_msg(d->udev,
   usb_rcvctrlpipe(d->udev,0),
   req,
   USB_TYPE_VENDOR | USB_DIR_IN,
   value, index, st->data, blen,
   2000);
  deb_info("reading number %d (ret: %d)\n",try,ret);
  try++;
 }

 if (ret < 0 || ret != blen) {
  warn("usb in %d operation failed.", req);
  ret = -EIO;
 } else {
  ret = 0;
  memcpy(b, st->data, blen);
 }

 deb_xfer("in: req. %x, val: %x, ind: %x, buffer: ",req,value,index);
 debug_dump(b,blen,deb_xfer);

 mutex_unlock(&d->usb_mutex);

 return ret;
}
