
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int regmap; } ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int USEC_PER_MSEC ;
 scalar_t__ arizona_poll_reg_delay (int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 int ktime_add_us (int ,int) ;
 int ktime_get () ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int arizona_poll_reg(struct arizona *arizona,
       int timeout_ms, unsigned int reg,
       unsigned int mask, unsigned int target)
{
 ktime_t timeout = ktime_add_us(ktime_get(), timeout_ms * USEC_PER_MSEC);
 unsigned int val = 0;
 int ret;

 do {
  ret = regmap_read(arizona->regmap, reg, &val);

  if ((val & mask) == target)
   return 0;
 } while (arizona_poll_reg_delay(timeout));

 if (ret) {
  dev_err(arizona->dev, "Failed polling reg 0x%x: %d\n",
   reg, ret);
  return ret;
 }

 dev_err(arizona->dev, "Polling reg 0x%x timed out: %x\n", reg, val);
 return -ETIMEDOUT;
}
