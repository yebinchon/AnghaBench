
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct hdpvr_device {int v4l2_dev; int usbc_mutex; int * usbc_buf; int udev; } ;


 int CTRL_DEFAULT_INDEX ;
 int MSG_INFO ;
 int hdpvr_debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,char,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;
 int v4l2_dbg (int ,int ,int *,char*,int ,int) ;

int hdpvr_config_call(struct hdpvr_device *dev, uint value, u8 valbuf)
{
 int ret;
 char request_type = 0x38, snd_request = 0x01;

 mutex_lock(&dev->usbc_mutex);
 dev->usbc_buf[0] = valbuf;
 ret = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         snd_request, 0x00 | request_type,
         value, CTRL_DEFAULT_INDEX,
         dev->usbc_buf, 1, 10000);

 mutex_unlock(&dev->usbc_mutex);
 v4l2_dbg(MSG_INFO, hdpvr_debug, &dev->v4l2_dev,
   "config call request for value 0x%x returned %d\n", value,
   ret);

 return ret < 0 ? ret : 0;
}
