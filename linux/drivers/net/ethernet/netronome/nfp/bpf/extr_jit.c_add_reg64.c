
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_ADD ;
 int ALU_OP_ADD_C ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_both (int) ;

__attribute__((used)) static int add_reg64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;

 emit_alu(nfp_prog, reg_both(insn->dst_reg * 2),
   reg_a(insn->dst_reg * 2), ALU_OP_ADD,
   reg_b(insn->src_reg * 2));
 emit_alu(nfp_prog, reg_both(insn->dst_reg * 2 + 1),
   reg_a(insn->dst_reg * 2 + 1), ALU_OP_ADD_C,
   reg_b(insn->src_reg * 2 + 1));

 return 0;
}
