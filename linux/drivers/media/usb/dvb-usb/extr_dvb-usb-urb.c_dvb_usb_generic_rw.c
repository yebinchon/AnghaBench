
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ generic_bulk_ctrl_endpoint; scalar_t__ generic_bulk_ctrl_endpoint_response; } ;
struct dvb_usb_device {int usb_mutex; TYPE_1__ props; int udev; } ;


 int EINVAL ;
 int ENOMEM ;
 int deb_xfer (char*) ;
 int debug_dump (int *,int,int (*) (char*)) ;
 int err (char*,...) ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (int ,int ,int *,int,int*,int) ;
 int usb_rcvbulkpipe (int ,scalar_t__) ;
 int usb_sndbulkpipe (int ,scalar_t__) ;

int dvb_usb_generic_rw(struct dvb_usb_device *d, u8 *wbuf, u16 wlen, u8 *rbuf,
 u16 rlen, int delay_ms)
{
 int actlen,ret = -ENOMEM;

 if (!d || wbuf == ((void*)0) || wlen == 0)
  return -EINVAL;

 if (d->props.generic_bulk_ctrl_endpoint == 0) {
  err("endpoint for generic control not specified.");
  return -EINVAL;
 }

 if ((ret = mutex_lock_interruptible(&d->usb_mutex)))
  return ret;

 deb_xfer(">>> ");
 debug_dump(wbuf,wlen,deb_xfer);

 ret = usb_bulk_msg(d->udev,usb_sndbulkpipe(d->udev,
   d->props.generic_bulk_ctrl_endpoint), wbuf,wlen,&actlen,
   2000);

 if (ret)
  err("bulk message failed: %d (%d/%d)",ret,wlen,actlen);
 else
  ret = actlen != wlen ? -1 : 0;


 if (!ret && rbuf && rlen) {
  if (delay_ms)
   msleep(delay_ms);

  ret = usb_bulk_msg(d->udev,usb_rcvbulkpipe(d->udev,
    d->props.generic_bulk_ctrl_endpoint_response ?
    d->props.generic_bulk_ctrl_endpoint_response :
    d->props.generic_bulk_ctrl_endpoint),rbuf,rlen,&actlen,
    2000);

  if (ret)
   err("recv bulk message failed: %d",ret);
  else {
   deb_xfer("<<< ");
   debug_dump(rbuf,actlen,deb_xfer);
  }
 }

 mutex_unlock(&d->usb_mutex);
 return ret;
}
