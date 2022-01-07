
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; int entity; } ;
struct i2c_client {int dummy; } ;
struct adv76xx_state {int delayed_work_enable_hotplug; } ;


 int adv76xx_unregister_clients (struct adv76xx_state*) ;
 int cancel_delayed_work (int *) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int io_write (struct v4l2_subdev*,int,int ) ;
 int media_entity_cleanup (int *) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static int adv76xx_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct adv76xx_state *state = to_state(sd);


 io_write(sd, 0x40, 0);
 io_write(sd, 0x41, 0);
 io_write(sd, 0x46, 0);
 io_write(sd, 0x6e, 0);
 io_write(sd, 0x73, 0);

 cancel_delayed_work(&state->delayed_work_enable_hotplug);
 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 adv76xx_unregister_clients(to_state(sd));
 v4l2_ctrl_handler_free(sd->ctrl_handler);
 return 0;
}
