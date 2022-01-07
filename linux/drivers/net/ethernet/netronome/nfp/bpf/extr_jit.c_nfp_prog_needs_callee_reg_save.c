
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {unsigned int subprog_cnt; TYPE_1__* subprog; } ;
struct TYPE_2__ {scalar_t__ needs_reg_push; } ;



__attribute__((used)) static bool nfp_prog_needs_callee_reg_save(struct nfp_prog *nfp_prog)
{
 unsigned int idx;

 for (idx = 1; idx < nfp_prog->subprog_cnt; idx++)
  if (nfp_prog->subprog[idx].needs_reg_push)
   return 1;

 return 0;
}
