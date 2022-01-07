
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {scalar_t__ pll; int sysclk_rate; int mutex; int clk32k; scalar_t__ mclk_rate; int mclk; int regmap; int audpwron; scalar_t__ power_count; int dev; } ;


 int EPERM ;
 scalar_t__ TWL6040_SYSCLK_SEL_HPPLL ;
 scalar_t__ TWL6040_SYSCLK_SEL_LPPLL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,...) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int twl6040_power_down_manual (struct twl6040*) ;
 int twl6040_power_up_automatic (struct twl6040*) ;
 int twl6040_power_up_manual (struct twl6040*) ;
 int usleep_range (int,int) ;

int twl6040_power(struct twl6040 *twl6040, int on)
{
 int ret = 0;

 mutex_lock(&twl6040->mutex);

 if (on) {

  if (twl6040->power_count++)
   goto out;

  ret = clk_prepare_enable(twl6040->clk32k);
  if (ret) {
   twl6040->power_count = 0;
   goto out;
  }


  regcache_cache_only(twl6040->regmap, 0);

  if (gpio_is_valid(twl6040->audpwron)) {

   ret = twl6040_power_up_automatic(twl6040);
   if (ret) {
    clk_disable_unprepare(twl6040->clk32k);
    twl6040->power_count = 0;
    goto out;
   }
  } else {

   ret = twl6040_power_up_manual(twl6040);
   if (ret) {
    clk_disable_unprepare(twl6040->clk32k);
    twl6040->power_count = 0;
    goto out;
   }
  }





  usleep_range(10000, 12000);


  ret = regcache_sync(twl6040->regmap);
  if (ret) {
   dev_err(twl6040->dev, "Failed to sync with the HW: %i\n",
    ret);
   goto out;
  }


  twl6040->pll = TWL6040_SYSCLK_SEL_LPPLL;
  twl6040->sysclk_rate = 19200000;
 } else {

  if (!twl6040->power_count) {
   dev_err(twl6040->dev,
    "device is already powered-off\n");
   ret = -EPERM;
   goto out;
  }

  if (--twl6040->power_count)
   goto out;

  if (gpio_is_valid(twl6040->audpwron)) {

   gpio_set_value(twl6040->audpwron, 0);


   usleep_range(500, 700);
  } else {

   twl6040_power_down_manual(twl6040);
  }


  regcache_cache_only(twl6040->regmap, 1);
  regcache_mark_dirty(twl6040->regmap);

  twl6040->sysclk_rate = 0;

  if (twl6040->pll == TWL6040_SYSCLK_SEL_HPPLL) {
   clk_disable_unprepare(twl6040->mclk);
   twl6040->mclk_rate = 0;
  }

  clk_disable_unprepare(twl6040->clk32k);
 }

out:
 mutex_unlock(&twl6040->mutex);
 return ret;
}
