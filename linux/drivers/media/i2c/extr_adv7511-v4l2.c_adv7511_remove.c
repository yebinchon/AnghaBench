
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int ctrl_handler; int entity; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int name; } ;
struct adv7511_state {int chip_revision; int work_queue; int i2c_pktmem; int i2c_cec; int i2c_edid; int edid_handler; } ;
struct TYPE_2__ {int name; } ;


 int adv7511_init_setup (struct v4l2_subdev*) ;
 int adv7511_set_isr (struct v4l2_subdev*,int) ;
 int cancel_delayed_work (int *) ;
 int debug ;
 int destroy_workqueue (int ) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int,int ) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7511_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct adv7511_state *state = get_adv7511_state(sd);

 state->chip_revision = -1;

 v4l2_dbg(1, debug, sd, "%s removed @ 0x%x (%s)\n", client->name,
   client->addr << 1, client->adapter->name);

 adv7511_set_isr(sd, 0);
 adv7511_init_setup(sd);
 cancel_delayed_work(&state->edid_handler);
 i2c_unregister_device(state->i2c_edid);
 i2c_unregister_device(state->i2c_cec);
 i2c_unregister_device(state->i2c_pktmem);
 destroy_workqueue(state->work_queue);
 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(sd->ctrl_handler);
 return 0;
}
