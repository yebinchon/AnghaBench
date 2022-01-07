
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int dcvdd; int regmap; } ;


 int ARIZONA_WRITE_SEQUENCER_CTRL_3 ;
 int arizona_disable_reset (struct arizona*) ;
 int arizona_enable_reset (struct arizona*) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int wm5102_clear_write_sequencer(struct arizona *arizona)
{
 int ret;

 ret = regmap_write(arizona->regmap, ARIZONA_WRITE_SEQUENCER_CTRL_3,
      0x0);
 if (ret) {
  dev_err(arizona->dev,
   "Failed to clear write sequencer state: %d\n", ret);
  return ret;
 }

 arizona_enable_reset(arizona);
 regulator_disable(arizona->dcvdd);

 msleep(20);

 ret = regulator_enable(arizona->dcvdd);
 if (ret) {
  dev_err(arizona->dev, "Failed to re-enable DCVDD: %d\n", ret);
  return ret;
 }
 arizona_disable_reset(arizona);

 return 0;
}
