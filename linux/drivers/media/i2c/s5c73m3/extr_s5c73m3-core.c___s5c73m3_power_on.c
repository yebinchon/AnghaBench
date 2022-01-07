
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5c73m3 {TYPE_1__* supplies; int clock; int oif_sd; int mclk_frequency; } ;
struct TYPE_2__ {int consumer; } ;


 int RST ;
 int S5C73M3_MAX_SUPPLIES ;
 int STBY ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int s5c73m3_dbg ;
 int s5c73m3_gpio_deassert (struct s5c73m3*,int ) ;
 int usleep_range (int,int) ;
 int v4l2_dbg (int,int ,int *,char*,int ) ;

__attribute__((used)) static int __s5c73m3_power_on(struct s5c73m3 *state)
{
 int i, ret;

 for (i = 0; i < S5C73M3_MAX_SUPPLIES; i++) {
  ret = regulator_enable(state->supplies[i].consumer);
  if (ret)
   goto err_reg_dis;
 }

 ret = clk_set_rate(state->clock, state->mclk_frequency);
 if (ret < 0)
  goto err_reg_dis;

 ret = clk_prepare_enable(state->clock);
 if (ret < 0)
  goto err_reg_dis;

 v4l2_dbg(1, s5c73m3_dbg, &state->oif_sd, "clock frequency: %ld\n",
     clk_get_rate(state->clock));

 s5c73m3_gpio_deassert(state, STBY);
 usleep_range(100, 200);

 s5c73m3_gpio_deassert(state, RST);
 usleep_range(50, 100);

 return 0;

err_reg_dis:
 for (--i; i >= 0; i--)
  regulator_disable(state->supplies[i].consumer);
 return ret;
}
