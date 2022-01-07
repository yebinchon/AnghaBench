
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encx24j600_context {int dummy; } ;


 int EINVAL ;
 int regmap_encx24j600_sfr_clr_bits (struct encx24j600_context*,unsigned int,unsigned int) ;
 int regmap_encx24j600_sfr_set_bits (struct encx24j600_context*,unsigned int,unsigned int) ;

__attribute__((used)) static int regmap_encx24j600_reg_update_bits(void *context, unsigned int reg,
          unsigned int mask,
          unsigned int val)
{
 struct encx24j600_context *ctx = context;

 int ret = 0;
 unsigned int set_mask = mask & val;
 unsigned int clr_mask = mask & ~val;

 if ((reg >= 0x40 && reg < 0x6c) || reg >= 0x80)
  return -EINVAL;

 if (set_mask & 0xff)
  ret = regmap_encx24j600_sfr_set_bits(ctx, reg, set_mask);

 set_mask = (set_mask & 0xff00) >> 8;

 if ((set_mask & 0xff) && (ret == 0))
  ret = regmap_encx24j600_sfr_set_bits(ctx, reg + 1, set_mask);

 if ((clr_mask & 0xff) && (ret == 0))
  ret = regmap_encx24j600_sfr_clr_bits(ctx, reg, clr_mask);

 clr_mask = (clr_mask & 0xff00) >> 8;

 if ((clr_mask & 0xff) && (ret == 0))
  ret = regmap_encx24j600_sfr_clr_bits(ctx, reg + 1, clr_mask);

 return ret;
}
