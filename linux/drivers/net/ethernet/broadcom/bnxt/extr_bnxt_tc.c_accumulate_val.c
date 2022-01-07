
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ high_bits (scalar_t__,scalar_t__) ;
 scalar_t__ low_bits (scalar_t__,scalar_t__) ;

__attribute__((used)) static void accumulate_val(u64 *accum, u64 val, u64 mask)
{


 bool wrapped = val < ((*accum) & (mask));

 *accum = ((*accum) & ~(mask)) + val;
 if (wrapped)
  *accum += (mask + 1);
}
