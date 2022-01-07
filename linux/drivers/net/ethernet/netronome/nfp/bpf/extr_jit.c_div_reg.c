
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int div_reg64 (struct nfp_prog*,struct nfp_insn_meta*) ;

__attribute__((used)) static int div_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return div_reg64(nfp_prog, meta);
}
