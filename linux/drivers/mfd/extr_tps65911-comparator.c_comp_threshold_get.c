
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910 {int dummy; } ;
struct comparator {int* vsel_table; int reg; } ;


 int tps65910_reg_read (struct tps65910*,int ,unsigned int*) ;
 struct comparator* tps_comparators ;

__attribute__((used)) static int comp_threshold_get(struct tps65910 *tps65910, int id)
{
 struct comparator tps_comp = tps_comparators[id];
 unsigned int val;
 int ret;

 ret = tps65910_reg_read(tps65910, tps_comp.reg, &val);
 if (ret < 0)
  return ret;

 val >>= 1;
 return tps_comp.vsel_table[val];
}
