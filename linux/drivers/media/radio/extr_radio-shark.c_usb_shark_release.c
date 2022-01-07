
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct shark_device {struct shark_device* transfer_buffer; int v4l2_dev; } ;


 int kfree (struct shark_device*) ;
 struct shark_device* v4l2_dev_to_shark (struct v4l2_device*) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void usb_shark_release(struct v4l2_device *v4l2_dev)
{
 struct shark_device *shark = v4l2_dev_to_shark(v4l2_dev);

 v4l2_device_unregister(&shark->v4l2_dev);
 kfree(shark->transfer_buffer);
 kfree(shark);
}
