
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_write_bit (struct rbsp*,int) ;

__attribute__((used)) static int rbsp_write_bits(struct rbsp *rbsp, int num, int value)
{
 int ret;

 while (num--) {
  ret = rbsp_write_bit(rbsp, (value >> num) & 1);
  if (ret)
   return ret;
 }

 return 0;
}
