
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int regmap; } ;


 int EINVAL ;
 unsigned int TPS65217_PASSWORD_REGS_UNLOCK ;



 unsigned int TPS65217_REG_PASSWORD ;
 int regmap_write (int ,unsigned int,unsigned int) ;

int tps65217_reg_write(struct tps65217 *tps, unsigned int reg,
   unsigned int val, unsigned int level)
{
 int ret;
 unsigned int xor_reg_val;

 switch (level) {
 case 128:
  return regmap_write(tps->regmap, reg, val);
 case 130:
  xor_reg_val = reg ^ TPS65217_PASSWORD_REGS_UNLOCK;
  ret = regmap_write(tps->regmap, TPS65217_REG_PASSWORD,
       xor_reg_val);
  if (ret < 0)
   return ret;

  return regmap_write(tps->regmap, reg, val);
 case 129:
  xor_reg_val = reg ^ TPS65217_PASSWORD_REGS_UNLOCK;
  ret = regmap_write(tps->regmap, TPS65217_REG_PASSWORD,
       xor_reg_val);
  if (ret < 0)
   return ret;
  ret = regmap_write(tps->regmap, reg, val);
  if (ret < 0)
   return ret;
  ret = regmap_write(tps->regmap, TPS65217_REG_PASSWORD,
       xor_reg_val);
  if (ret < 0)
   return ret;
  return regmap_write(tps->regmap, reg, val);
 default:
  return -EINVAL;
 }
}
