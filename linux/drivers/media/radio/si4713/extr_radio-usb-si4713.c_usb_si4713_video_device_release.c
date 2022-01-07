
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct si4713_usb_device {struct si4713_usb_device* buffer; int v4l2_dev; struct i2c_adapter i2c_adapter; } ;


 int i2c_del_adapter (struct i2c_adapter*) ;
 int kfree (struct si4713_usb_device*) ;
 struct si4713_usb_device* to_si4713_dev (struct v4l2_device*) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void usb_si4713_video_device_release(struct v4l2_device *v4l2_dev)
{
 struct si4713_usb_device *radio = to_si4713_dev(v4l2_dev);
 struct i2c_adapter *adapter = &radio->i2c_adapter;

 i2c_del_adapter(adapter);
 v4l2_device_unregister(&radio->v4l2_dev);
 kfree(radio->buffer);
 kfree(radio);
}
