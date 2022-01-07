
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct ma901radio_device {struct ma901radio_device* buffer; int v4l2_dev; int hdl; } ;


 int kfree (struct ma901radio_device*) ;
 struct ma901radio_device* to_ma901radio_dev (struct v4l2_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void usb_ma901radio_release(struct v4l2_device *v4l2_dev)
{
 struct ma901radio_device *radio = to_ma901radio_dev(v4l2_dev);

 v4l2_ctrl_handler_free(&radio->hdl);
 v4l2_device_unregister(&radio->v4l2_dev);
 kfree(radio->buffer);
 kfree(radio);
}
