
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int wrp_mul (struct nfp_prog*,struct nfp_insn_meta*,int,int) ;

__attribute__((used)) static int mul_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 return wrp_mul(nfp_prog, meta, 0, 0);
}
