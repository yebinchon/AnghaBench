
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; int off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;
typedef enum br_mask { ____Placeholder_br_mask } br_mask ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;


 scalar_t__ is_mbpf_jmp64 (struct nfp_insn_meta*) ;
 int wrp_test_reg_one (struct nfp_prog*,int,int,int,int,int ) ;

__attribute__((used)) static int
wrp_test_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
      enum alu_op alu_op, enum br_mask br_mask)
{
 const struct bpf_insn *insn = &meta->insn;

 wrp_test_reg_one(nfp_prog, insn->dst_reg * 2, alu_op,
    insn->src_reg * 2, br_mask, insn->off);
 if (is_mbpf_jmp64(meta))
  wrp_test_reg_one(nfp_prog, insn->dst_reg * 2 + 1, alu_op,
     insn->src_reg * 2 + 1, br_mask, insn->off);

 return 0;
}
