
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5c73m3 {int clock; TYPE_1__* supplies; int oif_sd; scalar_t__ isp_ready; scalar_t__ streaming; } ;
struct TYPE_2__ {int supply; int consumer; } ;


 int RST ;
 int S5C73M3_MAX_SUPPLIES ;
 int STBY ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 scalar_t__ s5c73m3_gpio_assert (struct s5c73m3*,int ) ;
 int usleep_range (int,int) ;
 int v4l2_err (int *,char*,int ,int) ;

__attribute__((used)) static int __s5c73m3_power_off(struct s5c73m3 *state)
{
 int i, ret;

 if (s5c73m3_gpio_assert(state, RST))
  usleep_range(10, 50);

 if (s5c73m3_gpio_assert(state, STBY))
  usleep_range(100, 200);

 clk_disable_unprepare(state->clock);

 state->streaming = 0;
 state->isp_ready = 0;

 for (i = S5C73M3_MAX_SUPPLIES - 1; i >= 0; i--) {
  ret = regulator_disable(state->supplies[i].consumer);
  if (ret)
   goto err;
 }

 return 0;
err:
 for (++i; i < S5C73M3_MAX_SUPPLIES; i++) {
  int r = regulator_enable(state->supplies[i].consumer);
  if (r < 0)
   v4l2_err(&state->oif_sd, "Failed to re-enable %s: %d\n",
     state->supplies[i].supply, r);
 }

 clk_prepare_enable(state->clock);
 return ret;
}
