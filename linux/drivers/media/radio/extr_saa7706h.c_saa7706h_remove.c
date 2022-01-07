
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7706h_state {int hdl; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct saa7706h_state*) ;
 int saa7706h_mute (struct v4l2_subdev*) ;
 struct saa7706h_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7706h_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct saa7706h_state *state = to_state(sd);

 saa7706h_mute(sd);
 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&state->hdl);
 kfree(to_state(sd));
 return 0;
}
