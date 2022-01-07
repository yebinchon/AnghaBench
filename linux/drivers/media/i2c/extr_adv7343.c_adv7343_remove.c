
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adv7343_state {int hdl; int sd; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct adv7343_state* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (int *) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int adv7343_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct adv7343_state *state = to_state(sd);

 v4l2_async_unregister_subdev(&state->sd);
 v4l2_ctrl_handler_free(&state->hdl);

 return 0;
}
