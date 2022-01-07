
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2250 {int hdl; int sd; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct s2250*) ;
 struct s2250* to_state (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int s2250_remove(struct i2c_client *client)
{
 struct s2250 *state = to_state(i2c_get_clientdata(client));

 v4l2_device_unregister_subdev(&state->sd);
 v4l2_ctrl_handler_free(&state->hdl);
 kfree(state);
 return 0;
}
