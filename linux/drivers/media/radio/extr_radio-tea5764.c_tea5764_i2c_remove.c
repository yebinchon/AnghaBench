
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_device {int v4l2_dev; int ctrl_handler; int vdev; } ;
struct i2c_client {int dummy; } ;


 int PDEBUG (char*) ;
 struct tea5764_device* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tea5764_device*) ;
 int tea5764_power_down (struct tea5764_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int tea5764_i2c_remove(struct i2c_client *client)
{
 struct tea5764_device *radio = i2c_get_clientdata(client);

 PDEBUG("remove");
 if (radio) {
  tea5764_power_down(radio);
  video_unregister_device(&radio->vdev);
  v4l2_ctrl_handler_free(&radio->ctrl_handler);
  v4l2_device_unregister(&radio->v4l2_dev);
  kfree(radio);
 }
 return 0;
}
