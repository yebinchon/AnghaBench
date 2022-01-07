
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct TYPE_4__ {int entity; int ctrl_handler; int dev; } ;
struct s5k5baf {TYPE_1__ cis_sd; TYPE_2__ sd; int clock; void* crop_source; void* compose; void* crop_sink; int lock; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int S5K5BAF_CLK_NAME ;
 int devm_clk_get (int ,int ) ;
 struct s5k5baf* devm_kzalloc (int *,int,int ) ;
 int media_entity_cleanup (int *) ;
 int mutex_init (int *) ;
 int s5k5baf_check_fw_revision (struct s5k5baf*) ;
 void* s5k5baf_cis_rect ;
 int s5k5baf_configure_gpios (struct s5k5baf*) ;
 int s5k5baf_configure_regulators (struct s5k5baf*) ;
 int s5k5baf_configure_subdevs (struct s5k5baf*,struct i2c_client*) ;
 int s5k5baf_hw_init (struct s5k5baf*) ;
 int s5k5baf_initialize_ctrls (struct s5k5baf*) ;
 int s5k5baf_parse_device_node (struct s5k5baf*,int *) ;
 int s5k5baf_power_off (struct s5k5baf*) ;
 int s5k5baf_power_on (struct s5k5baf*) ;
 int v4l2_async_register_subdev (TYPE_2__*) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static int s5k5baf_probe(struct i2c_client *c)
{
 struct s5k5baf *state;
 int ret;

 state = devm_kzalloc(&c->dev, sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 mutex_init(&state->lock);
 state->crop_sink = s5k5baf_cis_rect;
 state->compose = s5k5baf_cis_rect;
 state->crop_source = s5k5baf_cis_rect;

 ret = s5k5baf_parse_device_node(state, &c->dev);
 if (ret < 0)
  return ret;

 ret = s5k5baf_configure_subdevs(state, c);
 if (ret < 0)
  return ret;

 ret = s5k5baf_configure_gpios(state);
 if (ret < 0)
  goto err_me;

 ret = s5k5baf_configure_regulators(state);
 if (ret < 0)
  goto err_me;

 state->clock = devm_clk_get(state->sd.dev, S5K5BAF_CLK_NAME);
 if (IS_ERR(state->clock)) {
  ret = -EPROBE_DEFER;
  goto err_me;
 }

 ret = s5k5baf_power_on(state);
 if (ret < 0) {
  ret = -EPROBE_DEFER;
  goto err_me;
 }
 s5k5baf_hw_init(state);
 ret = s5k5baf_check_fw_revision(state);

 s5k5baf_power_off(state);
 if (ret < 0)
  goto err_me;

 ret = s5k5baf_initialize_ctrls(state);
 if (ret < 0)
  goto err_me;

 ret = v4l2_async_register_subdev(&state->sd);
 if (ret < 0)
  goto err_ctrl;

 return 0;

err_ctrl:
 v4l2_ctrl_handler_free(state->sd.ctrl_handler);
err_me:
 media_entity_cleanup(&state->sd.entity);
 media_entity_cleanup(&state->cis_sd.entity);
 return ret;
}
