
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_usb_device {int usb_mutex; int udev; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; } ;


 int EINTR ;
 int REQUEST_GET_VERSION ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int err (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

int dib0700_get_version(struct dvb_usb_device *d, u32 *hwversion,
   u32 *romversion, u32 *ramversion, u32 *fwtype)
{
 struct dib0700_state *st = d->priv;
 int ret;

 if (mutex_lock_interruptible(&d->usb_mutex) < 0) {
  err("could not acquire lock");
  return -EINTR;
 }

 ret = usb_control_msg(d->udev, usb_rcvctrlpipe(d->udev, 0),
      REQUEST_GET_VERSION,
      USB_TYPE_VENDOR | USB_DIR_IN, 0, 0,
      st->buf, 16, USB_CTRL_GET_TIMEOUT);
 if (hwversion != ((void*)0))
  *hwversion = (st->buf[0] << 24) | (st->buf[1] << 16) |
   (st->buf[2] << 8) | st->buf[3];
 if (romversion != ((void*)0))
  *romversion = (st->buf[4] << 24) | (st->buf[5] << 16) |
   (st->buf[6] << 8) | st->buf[7];
 if (ramversion != ((void*)0))
  *ramversion = (st->buf[8] << 24) | (st->buf[9] << 16) |
   (st->buf[10] << 8) | st->buf[11];
 if (fwtype != ((void*)0))
  *fwtype = (st->buf[12] << 24) | (st->buf[13] << 16) |
   (st->buf[14] << 8) | st->buf[15];
 mutex_unlock(&d->usb_mutex);
 return ret;
}
