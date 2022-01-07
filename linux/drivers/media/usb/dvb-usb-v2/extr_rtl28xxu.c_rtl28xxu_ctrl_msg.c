
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl28xxu_req {int size; int index; int data; int value; } ;
struct rtl28xxu_dev {int buf; } ;
struct dvb_usb_device {TYPE_1__* intf; int usb_mutex; int udev; struct rtl28xxu_dev* priv; } ;
struct TYPE_2__ {int dev; } ;


 int CMD_WR_FLAG ;
 int EINVAL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int dvb_usb_dbg_usb_control_msg (int ,int ,int,int ,int,int ,int) ;
 int memcpy (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,unsigned int,int ,int,int ,int,int ,int,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int rtl28xxu_ctrl_msg(struct dvb_usb_device *d, struct rtl28xxu_req *req)
{
 struct rtl28xxu_dev *dev = d->priv;
 int ret;
 unsigned int pipe;
 u8 requesttype;

 mutex_lock(&d->usb_mutex);

 if (req->size > sizeof(dev->buf)) {
  dev_err(&d->intf->dev, "too large message %u\n", req->size);
  ret = -EINVAL;
  goto err_mutex_unlock;
 }

 if (req->index & CMD_WR_FLAG) {

  memcpy(dev->buf, req->data, req->size);
  requesttype = (USB_TYPE_VENDOR | USB_DIR_OUT);
  pipe = usb_sndctrlpipe(d->udev, 0);
 } else {

  requesttype = (USB_TYPE_VENDOR | USB_DIR_IN);
  pipe = usb_rcvctrlpipe(d->udev, 0);
 }

 ret = usb_control_msg(d->udev, pipe, 0, requesttype, req->value,
   req->index, dev->buf, req->size, 1000);
 dvb_usb_dbg_usb_control_msg(d->udev, 0, requesttype, req->value,
   req->index, dev->buf, req->size);
 if (ret < 0)
  goto err_mutex_unlock;


 if (requesttype == (USB_TYPE_VENDOR | USB_DIR_IN))
  memcpy(req->data, dev->buf, req->size);

 mutex_unlock(&d->usb_mutex);

 return 0;
err_mutex_unlock:
 mutex_unlock(&d->usb_mutex);
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}
