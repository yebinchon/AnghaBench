
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_read_bit (struct rbsp*) ;
 int rbsp_read_bits (struct rbsp*,int,unsigned int*) ;

__attribute__((used)) static int rbsp_read_uev(struct rbsp *rbsp, unsigned int *val)
{
 int leading_zero_bits = 0;
 unsigned int tmp = 0;
 int ret;

 while ((ret = rbsp_read_bit(rbsp)) == 0)
  leading_zero_bits++;
 if (ret < 0)
  return ret;

 if (leading_zero_bits > 0) {
  ret = rbsp_read_bits(rbsp, leading_zero_bits, &tmp);
  if (ret)
   return ret;
 }

 if (val)
  *val = (1 << leading_zero_bits) - 1 + tmp;

 return 0;
}
