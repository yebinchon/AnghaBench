
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_sysclk_state {int dummy; } ;
struct arizona {int regmap; } ;


 int ARRAY_SIZE (int ) ;
 int arizona_disable_freerun_sysclk (struct arizona*,struct arizona_sysclk_state*) ;
 int arizona_enable_freerun_sysclk (struct arizona*,struct arizona_sysclk_state*) ;
 int regmap_multi_reg_write_bypassed (int ,int ,int ) ;
 int wm5110_sleep_patch ;

__attribute__((used)) static int wm5110_apply_sleep_patch(struct arizona *arizona)
{
 struct arizona_sysclk_state state;
 int err, ret;

 ret = arizona_enable_freerun_sysclk(arizona, &state);
 if (ret)
  return ret;

 ret = regmap_multi_reg_write_bypassed(arizona->regmap,
           wm5110_sleep_patch,
           ARRAY_SIZE(wm5110_sleep_patch));

 err = arizona_disable_freerun_sysclk(arizona, &state);

 return ret ?: err;
}
