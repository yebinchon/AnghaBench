
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k5baf {int sd; int supplies; int clock; scalar_t__ apply_crop; scalar_t__ apply_cfg; scalar_t__ streaming; } ;


 int IS_ERR (int ) ;
 int RST ;
 int S5K5BAF_NUM_SUPPLIES ;
 int STBY ;
 int clk_disable_unprepare (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int s5k5baf_gpio_assert (struct s5k5baf*,int ) ;
 int v4l2_err (int *,char*) ;

__attribute__((used)) static int s5k5baf_power_off(struct s5k5baf *state)
{
 int ret;

 state->streaming = 0;
 state->apply_cfg = 0;
 state->apply_crop = 0;

 s5k5baf_gpio_assert(state, RST);
 s5k5baf_gpio_assert(state, STBY);

 if (!IS_ERR(state->clock))
  clk_disable_unprepare(state->clock);

 ret = regulator_bulk_disable(S5K5BAF_NUM_SUPPLIES,
     state->supplies);
 if (ret < 0)
  v4l2_err(&state->sd, "failed to disable regulators\n");

 return 0;
}
