
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {int i2c_mutex; TYPE_1__* udev; struct cxusb_state* priv; } ;
struct cxusb_state {int* gpio_write_refresh; } ;
struct TYPE_5__ {int dev; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int CMD_ANALOG ;
 int CMD_DIGITAL ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int *,int ,int *,int) ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_clear_halt (TYPE_1__*,int ) ;
 int usb_rcvbulkpipe (TYPE_1__*,int) ;
 int usb_set_interface (TYPE_1__*,int ,int) ;
 int usb_sndbulkpipe (TYPE_1__*,int) ;

__attribute__((used)) static int cxusb_medion_set_mode(struct dvb_usb_device *dvbdev, bool digital)
{
 struct cxusb_state *st = dvbdev->priv;
 int ret;
 u8 b;
 unsigned int i;





 mutex_lock(&dvbdev->i2c_mutex);

 if (digital) {
  ret = usb_set_interface(dvbdev->udev, 0, 6);
  if (ret != 0) {
   dev_err(&dvbdev->udev->dev,
    "digital interface selection failed (%d)\n",
    ret);
   goto ret_unlock;
  }
 } else {
  ret = usb_set_interface(dvbdev->udev, 0, 1);
  if (ret != 0) {
   dev_err(&dvbdev->udev->dev,
    "analog interface selection failed (%d)\n",
    ret);
   goto ret_unlock;
  }
 }


 ret = usb_clear_halt(dvbdev->udev, usb_rcvbulkpipe(dvbdev->udev, 1));
 if (ret != 0)
  dev_warn(&dvbdev->udev->dev,
    "clear halt on IN pipe failed (%d)\n",
    ret);

 ret = usb_clear_halt(dvbdev->udev, usb_sndbulkpipe(dvbdev->udev, 1));
 if (ret != 0)
  dev_warn(&dvbdev->udev->dev,
    "clear halt on OUT pipe failed (%d)\n",
    ret);

 ret = cxusb_ctrl_msg(dvbdev, digital ? CMD_DIGITAL : CMD_ANALOG,
        ((void*)0), 0, &b, 1);
 if (ret != 0) {
  dev_err(&dvbdev->udev->dev, "mode switch failed (%d)\n",
   ret);
  goto ret_unlock;
 }


 for (i = 0; i < ARRAY_SIZE(st->gpio_write_refresh); i++)
  st->gpio_write_refresh[i] = 1;

ret_unlock:
 mutex_unlock(&dvbdev->i2c_mutex);

 return ret;
}
