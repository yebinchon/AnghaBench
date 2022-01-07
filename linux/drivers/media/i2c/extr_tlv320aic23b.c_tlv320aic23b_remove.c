
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tlv320aic23b_state {int hdl; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 struct tlv320aic23b_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int tlv320aic23b_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct tlv320aic23b_state *state = to_state(sd);

 v4l2_device_unregister_subdev(sd);
 v4l2_ctrl_handler_free(&state->hdl);
 return 0;
}
