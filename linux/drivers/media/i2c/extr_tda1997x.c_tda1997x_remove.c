
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int entity; } ;
struct tda1997x_platform_data {scalar_t__ audout_format; } ;
struct tda1997x_state {int lock; int page_lock; int delayed_work_enable_hpd; int supplies; int hdl; TYPE_1__* client; int audio_lock; struct tda1997x_platform_data pdata; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int TDA1997X_NUM_SUPPLIES ;
 int cancel_delayed_work (int *) ;
 int disable_irq (int ) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tda1997x_state*) ;
 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int regulator_bulk_disable (int ,int ) ;
 int tda1997x_power_mode (struct tda1997x_state*,int ) ;
 struct tda1997x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (int *) ;

__attribute__((used)) static int tda1997x_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct tda1997x_state *state = to_state(sd);
 struct tda1997x_platform_data *pdata = &state->pdata;

 if (pdata->audout_format) {
  mutex_destroy(&state->audio_lock);
 }

 disable_irq(state->client->irq);
 tda1997x_power_mode(state, 0);

 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);
 v4l2_ctrl_handler_free(&state->hdl);
 regulator_bulk_disable(TDA1997X_NUM_SUPPLIES, state->supplies);
 cancel_delayed_work(&state->delayed_work_enable_hpd);
 mutex_destroy(&state->page_lock);
 mutex_destroy(&state->lock);

 kfree(state);

 return 0;
}
