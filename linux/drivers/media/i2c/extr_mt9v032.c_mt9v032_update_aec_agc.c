
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regmap {int dummy; } ;
struct mt9v032 {int aec_agc; struct regmap* regmap; } ;


 int MT9V032_AEC_AGC_ENABLE ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static int
mt9v032_update_aec_agc(struct mt9v032 *mt9v032, u16 which, int enable)
{
 struct regmap *map = mt9v032->regmap;
 u16 value = mt9v032->aec_agc;
 int ret;

 if (enable)
  value |= which;
 else
  value &= ~which;

 ret = regmap_write(map, MT9V032_AEC_AGC_ENABLE, value);
 if (ret < 0)
  return ret;

 mt9v032->aec_agc = value;
 return 0;
}
