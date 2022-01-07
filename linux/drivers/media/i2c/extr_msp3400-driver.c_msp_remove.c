
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int restart; int hdl; scalar_t__ kthread; int sd; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int kthread_stop (scalar_t__) ;
 int msp_reset (struct i2c_client*) ;
 struct msp_state* to_state (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int msp_remove(struct i2c_client *client)
{
 struct msp_state *state = to_state(i2c_get_clientdata(client));

 v4l2_device_unregister_subdev(&state->sd);

 if (state->kthread) {
  state->restart = 1;
  kthread_stop(state->kthread);
 }
 msp_reset(client);

 v4l2_ctrl_handler_free(&state->hdl);
 return 0;
}
