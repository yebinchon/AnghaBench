
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {unsigned int imm; int dst_reg; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;


 int ALU_OP_ADD ;
 int ALU_OP_ADD_C ;
 int wrp_alu_imm (struct nfp_prog*,int,int ,unsigned int) ;

__attribute__((used)) static int add_imm64(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 u64 imm = insn->imm;

 wrp_alu_imm(nfp_prog, insn->dst_reg * 2, ALU_OP_ADD, imm & ~0U);
 wrp_alu_imm(nfp_prog, insn->dst_reg * 2 + 1, ALU_OP_ADD_C, imm >> 32);

 return 0;
}
