
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_prog {int dummy; } ;
struct bpf_insn {int dst_reg; int src_reg; int off; } ;
struct nfp_insn_meta {struct bpf_insn insn; } ;
struct jmp_code_map {int br_mask; scalar_t__ swap; } ;


 int ALU_OP_SUB ;
 int ALU_OP_SUB_C ;
 int EINVAL ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int ) ;
 scalar_t__ is_mbpf_jmp64 (struct nfp_insn_meta*) ;
 struct jmp_code_map* nfp_jmp_code_get (struct nfp_insn_meta*) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_none () ;

__attribute__((used)) static int cmp_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 const struct bpf_insn *insn = &meta->insn;
 const struct jmp_code_map *code;
 u8 areg, breg;

 code = nfp_jmp_code_get(meta);
 if (!code)
  return -EINVAL;

 areg = insn->dst_reg * 2;
 breg = insn->src_reg * 2;

 if (code->swap) {
  areg ^= breg;
  breg ^= areg;
  areg ^= breg;
 }

 emit_alu(nfp_prog, reg_none(), reg_a(areg), ALU_OP_SUB, reg_b(breg));
 if (is_mbpf_jmp64(meta))
  emit_alu(nfp_prog, reg_none(),
    reg_a(areg + 1), ALU_OP_SUB_C, reg_b(breg + 1));
 emit_br(nfp_prog, code->br_mask, insn->off, 0);

 return 0;
}
