
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_device {int* usbc_buf; int usbc_mutex; int v4l2_dev; int udev; } ;


 int MSG_INFO ;
 int hdpvr_debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int v4l2_dbg (int,int,int *,char*,int,int*) ;

int get_input_lines_info(struct hdpvr_device *dev)
{
 int ret, lines;

 mutex_lock(&dev->usbc_mutex);
 ret = usb_control_msg(dev->udev,
         usb_rcvctrlpipe(dev->udev, 0),
         0x81, 0x80 | 0x38,
         0x1800, 0x0003,
         dev->usbc_buf, 3,
         1000);







 (void)ret;

 lines = dev->usbc_buf[1] << 8 | dev->usbc_buf[0];
 mutex_unlock(&dev->usbc_mutex);
 return lines;
}
