
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hackrf_dev {int* buf; int dev; int udev; } ;
 int EINVAL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*,int,...) ;
 int hackrf_dbg_usb_control_msg (int ,int,int,int ,int ,int*,int ) ;
 int memcpy (int*,int*,int ) ;
 int usb_control_msg (int ,unsigned int,int,int,int ,int ,int*,int ,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int hackrf_ctrl_msg(struct hackrf_dev *dev, u8 request, u16 value,
  u16 index, u8 *data, u16 size)
{
 int ret;
 unsigned int pipe;
 u8 requesttype;

 switch (request) {
 case 131:
 case 133:
 case 137:
 case 134:
 case 136:
  pipe = usb_sndctrlpipe(dev->udev, 0);
  requesttype = (USB_TYPE_VENDOR | USB_DIR_OUT);
  break;
 case 135:
 case 128:
 case 132:
 case 129:
 case 130:
  pipe = usb_rcvctrlpipe(dev->udev, 0);
  requesttype = (USB_TYPE_VENDOR | USB_DIR_IN);
  break;
 default:
  dev_err(dev->dev, "Unknown command %02x\n", request);
  ret = -EINVAL;
  goto err;
 }


 if (!(requesttype & USB_DIR_IN))
  memcpy(dev->buf, data, size);

 ret = usb_control_msg(dev->udev, pipe, request, requesttype, value,
   index, dev->buf, size, 1000);
 hackrf_dbg_usb_control_msg(dev->dev, request, requesttype, value,
   index, dev->buf, size);
 if (ret < 0) {
  dev_err(dev->dev, "usb_control_msg() failed %d request %02x\n",
    ret, request);
  goto err;
 }


 if (requesttype & USB_DIR_IN)
  memcpy(data, dev->buf, size);

 return 0;
err:
 return ret;
}
