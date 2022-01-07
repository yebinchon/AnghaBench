
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int fls (int) ;
 int rbsp_write_bit (struct rbsp*,int ) ;
 int rbsp_write_bits (struct rbsp*,int,int) ;

__attribute__((used)) static int rbsp_write_uev(struct rbsp *rbsp, unsigned int value)
{
 int i;
 int ret;
 int tmp = value + 1;
 int leading_zero_bits = fls(tmp) - 1;

 for (i = 0; i < leading_zero_bits; i++) {
  ret = rbsp_write_bit(rbsp, 0);
  if (ret)
   return ret;
 }

 return rbsp_write_bits(rbsp, leading_zero_bits + 1, tmp);
}
