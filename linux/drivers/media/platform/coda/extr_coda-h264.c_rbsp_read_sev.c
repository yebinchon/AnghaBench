
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int dummy; } ;


 int rbsp_read_uev (struct rbsp*,unsigned int*) ;

__attribute__((used)) static int rbsp_read_sev(struct rbsp *rbsp, int *val)
{
 unsigned int tmp;
 int ret;

 ret = rbsp_read_uev(rbsp, &tmp);
 if (ret)
  return ret;

 if (val) {
  if (tmp & 1)
   *val = (tmp + 1) / 2;
  else
   *val = -(tmp / 2);
 }

 return 0;
}
