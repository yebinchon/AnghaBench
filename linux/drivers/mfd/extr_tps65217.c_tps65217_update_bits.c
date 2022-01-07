
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int dev; } ;


 int dev_err (int ,char*,unsigned int) ;
 int tps65217_reg_read (struct tps65217*,unsigned int,unsigned int*) ;
 int tps65217_reg_write (struct tps65217*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int tps65217_update_bits(struct tps65217 *tps, unsigned int reg,
  unsigned int mask, unsigned int val, unsigned int level)
{
 int ret;
 unsigned int data;

 ret = tps65217_reg_read(tps, reg, &data);
 if (ret) {
  dev_err(tps->dev, "Read from reg 0x%x failed\n", reg);
  return ret;
 }

 data &= ~mask;
 data |= val & mask;

 ret = tps65217_reg_write(tps, reg, data, level);
 if (ret)
  dev_err(tps->dev, "Write for reg 0x%x failed\n", reg);

 return ret;
}
