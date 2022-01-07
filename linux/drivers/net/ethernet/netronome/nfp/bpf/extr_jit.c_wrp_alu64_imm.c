
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; } ;
struct nfp_insn_meta {int flags; struct bpf_insn insn; } ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;


 int FLAG_INSN_SKIP_NOOP ;
 int wrp_alu_imm (struct nfp_prog*,int,int,unsigned int) ;

__attribute__((used)) static int
wrp_alu64_imm(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
       enum alu_op alu_op, bool skip)
{
 const struct bpf_insn *insn = &meta->insn;
 u64 imm = insn->imm;

 if (skip) {
  meta->flags |= FLAG_INSN_SKIP_NOOP;
  return 0;
 }

 wrp_alu_imm(nfp_prog, insn->dst_reg * 2, alu_op, imm & ~0U);
 wrp_alu_imm(nfp_prog, insn->dst_reg * 2 + 1, alu_op, imm >> 32);

 return 0;
}
