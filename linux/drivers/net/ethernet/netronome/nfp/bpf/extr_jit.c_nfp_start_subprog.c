
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int stack_frame_depth; TYPE_1__* subprog; } ;
struct nfp_insn_meta {size_t subprog_idx; } ;
struct TYPE_2__ {unsigned int stack_depth; } ;


 int nfp_subprog_prologue (struct nfp_prog*,struct nfp_insn_meta*) ;
 int round_up (unsigned int,int) ;

__attribute__((used)) static void
nfp_start_subprog(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 unsigned int depth = nfp_prog->subprog[meta->subprog_idx].stack_depth;

 nfp_prog->stack_frame_depth = round_up(depth, 4);
 nfp_subprog_prologue(nfp_prog, meta);
}
