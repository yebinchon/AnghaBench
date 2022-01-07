
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct keene_device {struct keene_device* buffer; int hdl; } ;


 int kfree (struct keene_device*) ;
 struct keene_device* to_keene_dev (struct v4l2_device*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static void usb_keene_video_device_release(struct v4l2_device *v4l2_dev)
{
 struct keene_device *radio = to_keene_dev(v4l2_dev);


 v4l2_ctrl_handler_free(&radio->hdl);
 kfree(radio->buffer);
 kfree(radio);
}
