
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct i2c_client {int irq; } ;
struct adv7180_state {scalar_t__ irq; int mutex; int csi_client; int vpp_client; } ;


 int adv7180_exit_controls (struct adv7180_state*) ;
 int adv7180_set_power_pin (struct adv7180_state*,int) ;
 int free_irq (int ,struct adv7180_state*) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 struct adv7180_state* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct adv7180_state *state = to_state(sd);

 v4l2_async_unregister_subdev(sd);

 if (state->irq > 0)
  free_irq(client->irq, state);

 media_entity_cleanup(&sd->entity);
 adv7180_exit_controls(state);

 i2c_unregister_device(state->vpp_client);
 i2c_unregister_device(state->csi_client);

 adv7180_set_power_pin(state, 0);

 mutex_destroy(&state->mutex);

 return 0;
}
