
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65218 {int dummy; } ;


 int tps65218_update_bits (struct tps65218*,unsigned int,unsigned int,unsigned int,unsigned int) ;

int tps65218_set_bits(struct tps65218 *tps, unsigned int reg,
  unsigned int mask, unsigned int val, unsigned int level)
{
 return tps65218_update_bits(tps, reg, mask, val, level);
}
