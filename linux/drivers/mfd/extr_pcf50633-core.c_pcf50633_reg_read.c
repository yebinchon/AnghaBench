
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int regmap; } ;


 int regmap_read (int ,int,unsigned int*) ;

u8 pcf50633_reg_read(struct pcf50633 *pcf, u8 reg)
{
 unsigned int val;
 int ret;

 ret = regmap_read(pcf->regmap, reg, &val);
 if (ret < 0)
  return -1;

 return val;
}
