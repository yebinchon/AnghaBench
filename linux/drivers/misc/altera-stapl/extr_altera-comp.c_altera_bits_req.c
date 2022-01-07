
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SHORT_BITS ;

__attribute__((used)) static u32 altera_bits_req(u32 n)
{
 u32 result = SHORT_BITS;

 if (n == 0)
  result = 1;
 else {

  while ((n & (1 << (SHORT_BITS - 1))) == 0) {
   n <<= 1;
   --result;
  }
 }

 return result;
}
