
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int EINVAL ;
 int rbsp_read_bit (struct rbsp*) ;

__attribute__((used)) static inline int rbsp_read_bits(struct rbsp *rbsp, int num, int *val)
{
 int i, ret;
 int tmp = 0;

 if (num > 32)
  return -EINVAL;

 for (i = 0; i < num; i++) {
  ret = rbsp_read_bit(rbsp);
  if (ret < 0)
   return ret;
  tmp |= ret << (num - i - 1);
 }

 if (val)
  *val = tmp;

 return 0;
}
