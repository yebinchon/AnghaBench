
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int imm; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int __ashr_imm (struct nfp_prog*,struct nfp_insn_meta*,int,int ) ;

__attribute__((used)) static int ashr_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 u8 dst = insn->dst_reg * 2;

 return __ashr_imm(nfp_prog, meta, dst, insn->imm);
}
