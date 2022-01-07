
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int imm; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int wrp_div_imm (struct nfp_prog*,int,int ) ;

__attribute__((used)) static int div_imm64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;

 return wrp_div_imm(nfp_prog, insn->dst_reg * 2, insn->imm);
}
