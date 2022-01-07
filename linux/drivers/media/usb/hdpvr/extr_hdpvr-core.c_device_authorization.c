
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int brightness; int contrast; int hue; int saturation; int sharpness; } ;
struct hdpvr_device {char* usbc_buf; int fw_ver; int usbc_mutex; int v4l2_dev; int udev; int flags; TYPE_1__ options; } ;


 int ENOMEM ;





 int HDPVR_FLAG_AC3_CAP ;
 int MSG_INFO ;
 int challenge (char*) ;
 int hdpvr_debug ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int,char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,...) ;
 int v4l2_err (int *,char*,int) ;
 int v4l2_info (int *,char*,...) ;

__attribute__((used)) static int device_authorization(struct hdpvr_device *dev)
{

 int ret, retval = -ENOMEM;
 char request_type = 0x38, rcv_request = 0x81;
 char *response;

 mutex_lock(&dev->usbc_mutex);
 ret = usb_control_msg(dev->udev,
         usb_rcvctrlpipe(dev->udev, 0),
         rcv_request, 0x80 | request_type,
         0x0400, 0x0003,
         dev->usbc_buf, 46,
         10000);
 if (ret != 46) {
  v4l2_err(&dev->v4l2_dev,
    "unexpected answer of status request, len %d\n", ret);
  goto unlock;
 }
 dev->fw_ver = dev->usbc_buf[1];

 dev->usbc_buf[46] = '\0';
 v4l2_info(&dev->v4l2_dev, "firmware version 0x%x dated %s\n",
     dev->fw_ver, &dev->usbc_buf[2]);

 if (dev->fw_ver > 0x15) {
  dev->options.brightness = 0x80;
  dev->options.contrast = 0x40;
  dev->options.hue = 0xf;
  dev->options.saturation = 0x40;
  dev->options.sharpness = 0x80;
 }

 switch (dev->fw_ver) {
 case 132:
  dev->flags &= ~HDPVR_FLAG_AC3_CAP;
  break;
 case 128:
 case 131:
 case 130:
 case 129:
  dev->flags |= HDPVR_FLAG_AC3_CAP;
  break;
 default:
  v4l2_info(&dev->v4l2_dev, "untested firmware, the driver might not work.\n");
  if (dev->fw_ver >= 128)
   dev->flags |= HDPVR_FLAG_AC3_CAP;
  else
   dev->flags &= ~HDPVR_FLAG_AC3_CAP;
 }

 response = dev->usbc_buf+38;




 challenge(response);





 msleep(100);
 ret = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         0xd1, 0x00 | request_type,
         0x0000, 0x0000,
         response, 8,
         10000);
 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "magic request returned %d\n", ret);

 retval = ret != 8;
unlock:
 mutex_unlock(&dev->usbc_mutex);
 return retval;
}
