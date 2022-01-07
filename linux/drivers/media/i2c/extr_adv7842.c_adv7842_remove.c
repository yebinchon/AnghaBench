
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; int entity; } ;
struct i2c_client {int dummy; } ;
struct adv7842_state {int delayed_work_enable_hotplug; } ;


 int adv7842_irq_enable (struct v4l2_subdev*,int) ;
 int adv7842_unregister_clients (struct v4l2_subdev*) ;
 int cancel_delayed_work (int *) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int media_entity_cleanup (int *) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7842_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct adv7842_state *state = to_state(sd);

 adv7842_irq_enable(sd, 0);
 cancel_delayed_work(&state->delayed_work_enable_hotplug);
 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 adv7842_unregister_clients(sd);
 v4l2_ctrl_handler_free(sd->ctrl_handler);
 return 0;
}
