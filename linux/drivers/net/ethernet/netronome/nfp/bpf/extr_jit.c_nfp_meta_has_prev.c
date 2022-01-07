
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_prog {int insns; } ;
struct TYPE_2__ {int * prev; } ;
struct nfp_insn_meta {TYPE_1__ l; } ;



__attribute__((used)) static bool
nfp_meta_has_prev(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return meta->l.prev != &nfp_prog->insns;
}
