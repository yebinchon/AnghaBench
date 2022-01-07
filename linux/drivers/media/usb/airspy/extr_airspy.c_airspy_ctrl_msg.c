
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct airspy {int* buf; int dev; int udev; } ;
 int EINVAL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int airspy_dbg_usb_control_msg (int ,int,int,int ,int ,int*,int ) ;
 int dev_err (int ,char*,int,...) ;
 int memcpy (int*,int*,int ) ;
 int usb_control_msg (int ,unsigned int,int,int,int ,int ,int*,int ,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int airspy_ctrl_msg(struct airspy *s, u8 request, u16 value, u16 index,
  u8 *data, u16 size)
{
 int ret;
 unsigned int pipe;
 u8 requesttype;

 switch (request) {
 case 135:
 case 134:
  pipe = usb_sndctrlpipe(s->udev, 0);
  requesttype = (USB_TYPE_VENDOR | USB_DIR_OUT);
  break;
 case 137:
 case 128:
 case 136:
 case 132:
 case 130:
 case 129:
 case 133:
 case 131:
  pipe = usb_rcvctrlpipe(s->udev, 0);
  requesttype = (USB_TYPE_VENDOR | USB_DIR_IN);
  break;
 default:
  dev_err(s->dev, "Unknown command %02x\n", request);
  ret = -EINVAL;
  goto err;
 }


 if (!(requesttype & USB_DIR_IN))
  memcpy(s->buf, data, size);

 ret = usb_control_msg(s->udev, pipe, request, requesttype, value,
   index, s->buf, size, 1000);
 airspy_dbg_usb_control_msg(s->dev, request, requesttype, value,
   index, s->buf, size);
 if (ret < 0) {
  dev_err(s->dev, "usb_control_msg() failed %d request %02x\n",
    ret, request);
  goto err;
 }


 if (requesttype & USB_DIR_IN)
  memcpy(data, s->buf, size);

 return 0;
err:
 return ret;
}
