
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peak_bitrate; int bitrate; } ;
struct hdpvr_device {int usbc_mutex; int * usbc_buf; int udev; TYPE_1__ options; } ;


 int CTRL_BITRATE_VALUE ;
 int CTRL_DEFAULT_INDEX ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

int hdpvr_set_bitrate(struct hdpvr_device *dev)
{
 int ret;

 mutex_lock(&dev->usbc_mutex);
 memset(dev->usbc_buf, 0, 4);
 dev->usbc_buf[0] = dev->options.bitrate;
 dev->usbc_buf[2] = dev->options.peak_bitrate;

 ret = usb_control_msg(dev->udev,
         usb_sndctrlpipe(dev->udev, 0),
         0x01, 0x38, CTRL_BITRATE_VALUE,
         CTRL_DEFAULT_INDEX, dev->usbc_buf, 4, 1000);
 mutex_unlock(&dev->usbc_mutex);

 return ret;
}
