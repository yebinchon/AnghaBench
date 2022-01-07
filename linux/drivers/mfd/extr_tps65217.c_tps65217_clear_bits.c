
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65217 {int dummy; } ;


 int tps65217_update_bits (struct tps65217*,unsigned int,unsigned int,int ,unsigned int) ;

int tps65217_clear_bits(struct tps65217 *tps, unsigned int reg,
  unsigned int mask, unsigned int level)
{
 return tps65217_update_bits(tps, reg, mask, 0, level);
}
