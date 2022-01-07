
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usb_req {int cmd; int* data; int data_len; int index; int value; } ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct TYPE_5__ {int dev; } ;


 int CE6230_USB_TIMEOUT ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int KBUILD_MODNAME ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int dev_err (int *,char*,int ,int) ;
 int dvb_usb_dbg_usb_control_msg (TYPE_1__*,int,int,int ,int ,int*,int ) ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int memcpy (int*,int*,int ) ;
 int msleep (int) ;
 int usb_control_msg (TYPE_1__*,unsigned int,int,int,int ,int ,int*,int ,int ) ;
 unsigned int usb_rcvctrlpipe (TYPE_1__*,int ) ;
 unsigned int usb_sndctrlpipe (TYPE_1__*,int ) ;

__attribute__((used)) static int ce6230_ctrl_msg(struct dvb_usb_device *d, struct usb_req *req)
{
 int ret;
 unsigned int pipe;
 u8 request;
 u8 requesttype;
 u16 value;
 u16 index;
 u8 *buf;

 request = req->cmd;
 value = req->value;
 index = req->index;

 switch (req->cmd) {
 case 131:
 case 133:
 case 129:
  requesttype = (USB_TYPE_VENDOR | USB_DIR_IN);
  break;
 case 130:
 case 132:
 case 128:
  requesttype = (USB_TYPE_VENDOR | USB_DIR_OUT);
  break;
 default:
  dev_err(&d->udev->dev, "%s: unknown command=%02x\n",
    KBUILD_MODNAME, req->cmd);
  ret = -EINVAL;
  goto error;
 }

 buf = kmalloc(req->data_len, GFP_KERNEL);
 if (!buf) {
  ret = -ENOMEM;
  goto error;
 }

 if (requesttype == (USB_TYPE_VENDOR | USB_DIR_OUT)) {

  memcpy(buf, req->data, req->data_len);
  pipe = usb_sndctrlpipe(d->udev, 0);
 } else {

  pipe = usb_rcvctrlpipe(d->udev, 0);
 }

 msleep(1);

 ret = usb_control_msg(d->udev, pipe, request, requesttype, value, index,
   buf, req->data_len, CE6230_USB_TIMEOUT);

 dvb_usb_dbg_usb_control_msg(d->udev, request, requesttype, value, index,
   buf, req->data_len);

 if (ret < 0)
  dev_err(&d->udev->dev, "%s: usb_control_msg() failed=%d\n",
    KBUILD_MODNAME, ret);
 else
  ret = 0;


 if (!ret && requesttype == (USB_TYPE_VENDOR | USB_DIR_IN))
  memcpy(req->data, buf, req->data_len);

 kfree(buf);
error:
 return ret;
}
