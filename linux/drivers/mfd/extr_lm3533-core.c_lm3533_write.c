
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533 {int dev; int regmap; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 int dev_err (int ,char*,int ,int) ;
 int regmap_write (int ,int ,int ) ;

int lm3533_write(struct lm3533 *lm3533, u8 reg, u8 val)
{
 int ret;

 dev_dbg(lm3533->dev, "write [%02x]: %02x\n", reg, val);

 ret = regmap_write(lm3533->regmap, reg, val);
 if (ret < 0) {
  dev_err(lm3533->dev, "failed to write register %02x: %d\n",
        reg, ret);
 }

 return ret;
}
