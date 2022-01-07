
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_sysclk_state {int fll; int sysclk; } ;
struct arizona {int dev; int regmap; } ;


 int ARIZONA_FLL1_CLOCK_OK_STS ;
 int ARIZONA_FLL1_CONTROL_1 ;
 int ARIZONA_FLL1_ENA ;
 int ARIZONA_FLL1_FREERUN ;
 int ARIZONA_INTERRUPT_RAW_STATUS_5 ;
 int ARIZONA_SYSTEM_CLOCK_1 ;
 int arizona_poll_reg (struct arizona*,int,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int arizona_enable_freerun_sysclk(struct arizona *arizona,
      struct arizona_sysclk_state *state)
{
 int ret, err;


 ret = regmap_read(arizona->regmap, ARIZONA_FLL1_CONTROL_1, &state->fll);
 if (ret) {
  dev_err(arizona->dev, "Failed to cache FLL settings: %d\n",
   ret);
  return ret;
 }
 ret = regmap_read(arizona->regmap, ARIZONA_SYSTEM_CLOCK_1,
     &state->sysclk);
 if (ret) {
  dev_err(arizona->dev, "Failed to cache SYSCLK settings: %d\n",
   ret);
  return ret;
 }


 ret = regmap_write(arizona->regmap, ARIZONA_FLL1_CONTROL_1,
   ARIZONA_FLL1_ENA | ARIZONA_FLL1_FREERUN);
 if (ret) {
  dev_err(arizona->dev,
   "Failed to start FLL in freerunning mode: %d\n",
   ret);
  return ret;
 }
 ret = arizona_poll_reg(arizona, 180, ARIZONA_INTERRUPT_RAW_STATUS_5,
          ARIZONA_FLL1_CLOCK_OK_STS,
          ARIZONA_FLL1_CLOCK_OK_STS);
 if (ret)
  goto err_fll;

 ret = regmap_write(arizona->regmap, ARIZONA_SYSTEM_CLOCK_1, 0x0144);
 if (ret) {
  dev_err(arizona->dev, "Failed to start SYSCLK: %d\n", ret);
  goto err_fll;
 }

 return 0;

err_fll:
 err = regmap_write(arizona->regmap, ARIZONA_FLL1_CONTROL_1, state->fll);
 if (err)
  dev_err(arizona->dev,
   "Failed to re-apply old FLL settings: %d\n", err);

 return ret;
}
