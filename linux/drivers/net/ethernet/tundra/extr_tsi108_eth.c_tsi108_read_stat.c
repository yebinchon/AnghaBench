
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int dummy; } ;


 int TSI108_STAT_CARRY1 ;
 int TSI108_STAT_CARRY2 ;
 int TSI_READ (int) ;
 int TSI_WRITE (int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline unsigned long
tsi108_read_stat(struct tsi108_prv_data * data, int reg, int carry_bit,
   int carry_shift, unsigned long *upper)
{
 int carryreg;
 unsigned long val;

 if (reg < 0xb0)
  carryreg = TSI108_STAT_CARRY1;
 else
  carryreg = TSI108_STAT_CARRY2;

      again:
 val = TSI_READ(reg) | *upper;






 if (unlikely(TSI_READ(carryreg) & carry_bit)) {
  *upper += carry_shift;
  TSI_WRITE(carryreg, carry_bit);
  goto again;
 }

 return val;
}
