
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int ctrl_handler; int entity; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int name; } ;
struct ad9389b_state {int chip_revision; int edid_i2c_client; int edid_handler; } ;
struct TYPE_2__ {int name; } ;


 int ad9389b_init_setup (struct v4l2_subdev*) ;
 int ad9389b_s_audio_stream (struct v4l2_subdev*,int) ;
 int ad9389b_s_stream (struct v4l2_subdev*,int) ;
 int cancel_delayed_work_sync (int *) ;
 int debug ;
 struct ad9389b_state* get_ad9389b_state (struct v4l2_subdev*) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int,int ) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int ad9389b_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ad9389b_state *state = get_ad9389b_state(sd);

 state->chip_revision = -1;

 v4l2_dbg(1, debug, sd, "%s removed @ 0x%x (%s)\n", client->name,
   client->addr << 1, client->adapter->name);

 ad9389b_s_stream(sd, 0);
 ad9389b_s_audio_stream(sd, 0);
 ad9389b_init_setup(sd);
 cancel_delayed_work_sync(&state->edid_handler);
 i2c_unregister_device(state->edid_i2c_client);
 v4l2_device_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(sd->ctrl_handler);
 return 0;
}
