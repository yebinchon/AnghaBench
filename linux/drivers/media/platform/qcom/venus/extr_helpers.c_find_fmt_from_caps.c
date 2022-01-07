
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct venus_caps {unsigned int num_fmts; TYPE_1__* fmts; } ;
struct TYPE_2__ {scalar_t__ buftype; scalar_t__ fmt; } ;



__attribute__((used)) static bool find_fmt_from_caps(struct venus_caps *caps, u32 buftype, u32 fmt)
{
 unsigned int i;

 for (i = 0; i < caps->num_fmts; i++) {
  if (caps->fmts[i].buftype == buftype &&
      caps->fmts[i].fmt == fmt)
   return 1;
 }

 return 0;
}
