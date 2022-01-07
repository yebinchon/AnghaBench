
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int mem_xadd (struct nfp_prog*,struct nfp_insn_meta*,int) ;

__attribute__((used)) static int mem_xadd4(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return mem_xadd(nfp_prog, meta, 0);
}
