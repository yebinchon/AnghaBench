
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int usb_mutex; int udev; int * priv; } ;


 int EIO ;
 int TH_COMMAND_IN ;
 int TH_COMMAND_OUT ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int deb_xfer (char*) ;
 int debug_dump (int *,int,int (*) (char*)) ;
 int err (char*) ;
 int memcpy (int *,int *,int) ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

int vp7045_usb_op(struct dvb_usb_device *d, u8 cmd, u8 *out, int outlen, u8 *in, int inlen, int msec)
{
 int ret = 0;
 u8 *buf = d->priv;

 buf[0] = cmd;

 if (outlen > 19)
  outlen = 19;

 if (inlen > 11)
  inlen = 11;

 ret = mutex_lock_interruptible(&d->usb_mutex);
 if (ret)
  return ret;

 if (out != ((void*)0) && outlen > 0)
  memcpy(&buf[1], out, outlen);

 deb_xfer("out buffer: ");
 debug_dump(buf, outlen+1, deb_xfer);


 if (usb_control_msg(d->udev,
   usb_sndctrlpipe(d->udev,0),
   TH_COMMAND_OUT, USB_TYPE_VENDOR | USB_DIR_OUT, 0, 0,
   buf, 20, 2000) != 20) {
  err("USB control message 'out' went wrong.");
  ret = -EIO;
  goto unlock;
 }

 msleep(msec);

 if (usb_control_msg(d->udev,
   usb_rcvctrlpipe(d->udev,0),
   TH_COMMAND_IN, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
   buf, 12, 2000) != 12) {
  err("USB control message 'in' went wrong.");
  ret = -EIO;
  goto unlock;
 }

 deb_xfer("in buffer: ");
 debug_dump(buf, 12, deb_xfer);

 if (in != ((void*)0) && inlen > 0)
  memcpy(in, &buf[1], inlen);

unlock:
 mutex_unlock(&d->usb_mutex);

 return ret;
}
