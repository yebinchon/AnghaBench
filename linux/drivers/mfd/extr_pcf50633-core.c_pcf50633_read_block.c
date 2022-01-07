
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int regmap; } ;


 int regmap_raw_read (int ,int ,int *,int) ;

int pcf50633_read_block(struct pcf50633 *pcf, u8 reg,
     int nr_regs, u8 *data)
{
 int ret;

 ret = regmap_raw_read(pcf->regmap, reg, data, nr_regs);
 if (ret != 0)
  return ret;

 return nr_regs;
}
