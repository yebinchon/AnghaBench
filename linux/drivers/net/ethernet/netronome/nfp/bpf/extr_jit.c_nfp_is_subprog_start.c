
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_insn_meta {int flags; } ;


 int FLAG_INSN_IS_SUBPROG_START ;

bool nfp_is_subprog_start(struct nfp_insn_meta *meta)
{
 return meta->flags & FLAG_INSN_IS_SUBPROG_START;
}
