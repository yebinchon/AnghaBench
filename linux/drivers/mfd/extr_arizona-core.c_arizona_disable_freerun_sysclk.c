
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_sysclk_state {int fll; int sysclk; } ;
struct arizona {int dev; int regmap; } ;


 int ARIZONA_FLL1_CONTROL_1 ;
 int ARIZONA_SYSTEM_CLOCK_1 ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int arizona_disable_freerun_sysclk(struct arizona *arizona,
       struct arizona_sysclk_state *state)
{
 int ret;

 ret = regmap_write(arizona->regmap, ARIZONA_SYSTEM_CLOCK_1,
      state->sysclk);
 if (ret) {
  dev_err(arizona->dev,
   "Failed to re-apply old SYSCLK settings: %d\n", ret);
  return ret;
 }

 ret = regmap_write(arizona->regmap, ARIZONA_FLL1_CONTROL_1, state->fll);
 if (ret) {
  dev_err(arizona->dev,
   "Failed to re-apply old FLL settings: %d\n", ret);
  return ret;
 }

 return 0;
}
