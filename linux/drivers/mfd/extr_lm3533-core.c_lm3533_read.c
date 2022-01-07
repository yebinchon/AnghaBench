
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533 {int dev; int regmap; } ;


 int dev_dbg (int ,char*,int,int) ;
 int dev_err (int ,char*,int,int) ;
 int regmap_read (int ,int,int*) ;

int lm3533_read(struct lm3533 *lm3533, u8 reg, u8 *val)
{
 int tmp;
 int ret;

 ret = regmap_read(lm3533->regmap, reg, &tmp);
 if (ret < 0) {
  dev_err(lm3533->dev, "failed to read register %02x: %d\n",
        reg, ret);
  return ret;
 }

 *val = tmp;

 dev_dbg(lm3533->dev, "read [%02x]: %02x\n", reg, *val);

 return ret;
}
