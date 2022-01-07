
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct dsbr100_device {struct dsbr100_device* transfer_buffer; int v4l2_dev; int hdl; } ;


 int kfree (struct dsbr100_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 struct dsbr100_device* v4l2_dev_to_radio (struct v4l2_device*) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void usb_dsbr100_release(struct v4l2_device *v4l2_dev)
{
 struct dsbr100_device *radio = v4l2_dev_to_radio(v4l2_dev);

 v4l2_ctrl_handler_free(&radio->hdl);
 v4l2_device_unregister(&radio->v4l2_dev);
 kfree(radio->transfer_buffer);
 kfree(radio);
}
