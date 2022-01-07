
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct CHIPSTATE {int hdl; int * thread; int wt; } ;


 int del_timer_sync (int *) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kthread_stop (int *) ;
 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int tvaudio_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct CHIPSTATE *chip = to_state(sd);

 del_timer_sync(&chip->wt);
 if (chip->thread) {

  kthread_stop(chip->thread);
  chip->thread = ((void*)0);
 }

 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&chip->hdl);
 return 0;
}
