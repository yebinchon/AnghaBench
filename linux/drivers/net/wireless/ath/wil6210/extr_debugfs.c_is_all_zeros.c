
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static bool is_all_zeros(void * const x_, size_t sz)
{

 u32 *x = x_;
 int n;

 for (n = 0; n < sz / sizeof(*x); n++)
  if (x[n])
   return 0;

 return 1;
}
