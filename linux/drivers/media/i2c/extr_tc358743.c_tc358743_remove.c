
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct tc358743_state {int hdl; int confctl_mutex; int cec_adap; int delayed_work_enable_hotplug; int work_i2c_poll; int timer; TYPE_1__* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int cancel_delayed_work (int *) ;
 int cec_unregister_adapter (int ) ;
 int del_timer_sync (int *) ;
 int flush_work (int *) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct tc358743_state* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int tc358743_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct tc358743_state *state = to_state(sd);

 if (!state->i2c_client->irq) {
  del_timer_sync(&state->timer);
  flush_work(&state->work_i2c_poll);
 }
 cancel_delayed_work(&state->delayed_work_enable_hotplug);
 cec_unregister_adapter(state->cec_adap);
 v4l2_async_unregister_subdev(sd);
 v4l2_device_unregister_subdev(sd);
 mutex_destroy(&state->confctl_mutex);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(&state->hdl);

 return 0;
}
