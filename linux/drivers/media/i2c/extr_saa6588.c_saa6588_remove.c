
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa6588 {int work; } ;
struct i2c_client {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct saa6588* to_saa6588 (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int saa6588_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct saa6588 *s = to_saa6588(sd);

 v4l2_device_unregister_subdev(sd);

 cancel_delayed_work_sync(&s->work);

 return 0;
}
