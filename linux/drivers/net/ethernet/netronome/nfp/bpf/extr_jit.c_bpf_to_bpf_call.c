
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
typedef int swreg ;
struct nfp_prog {TYPE_1__* subprog; int stack_frame_depth; } ;
struct TYPE_6__ {int imm; } ;
struct nfp_insn_meta {void* num_insns_after_br; TYPE_3__ insn; TYPE_2__* jmp_dst; } ;
struct TYPE_5__ {size_t subprog_idx; } ;
struct TYPE_4__ {scalar_t__ needs_reg_push; } ;


 int ALU_OP_ADD ;
 int ALU_OP_SUB ;
 int BR_OFF_RELO ;
 int BR_UNC ;
 int EINVAL ;
 int ELOOP ;
 int NFP_CSR_ACT_LM_ADDR0 ;
 int RELO_BR_GO_CALL_PUSH_REGS ;
 int RELO_IMMED_REL ;
 int STACK_FRAME_ALIGN ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,int ,int) ;
 int emit_br_relo (struct nfp_prog*,int ,int ,int,int ) ;
 int emit_csr_wr (struct nfp_prog*,int ,int ) ;
 int imm_b (struct nfp_prog*) ;
 int nfp_prog_confirm_current_offset (struct nfp_prog*,void*) ;
 void* nfp_prog_current_offset (struct nfp_prog*) ;
 int pr_err (char*) ;
 int ret_reg (struct nfp_prog*) ;
 void* round_up (int ,int ) ;
 int stack_imm (struct nfp_prog*) ;
 int stack_reg (struct nfp_prog*) ;
 int ur_load_imm_any (struct nfp_prog*,void*,int ) ;
 int wrp_immed_relo (struct nfp_prog*,int ,void*,int ) ;
 int wrp_nops (struct nfp_prog*,int) ;

__attribute__((used)) static int
bpf_to_bpf_call(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 u32 ret_tgt, stack_depth, offset_br;
 swreg tmp_reg;

 stack_depth = round_up(nfp_prog->stack_frame_depth, STACK_FRAME_ALIGN);



 if (stack_depth) {
  tmp_reg = ur_load_imm_any(nfp_prog, stack_depth,
       stack_imm(nfp_prog));
  emit_alu(nfp_prog, stack_reg(nfp_prog),
    stack_reg(nfp_prog), ALU_OP_ADD, tmp_reg);
  emit_csr_wr(nfp_prog, stack_reg(nfp_prog),
       NFP_CSR_ACT_LM_ADDR0);
 }
 if (!meta->jmp_dst) {
  pr_err("BUG: BPF-to-BPF call has no destination recorded\n");
  return -ELOOP;
 }
 if (nfp_prog->subprog[meta->jmp_dst->subprog_idx].needs_reg_push) {
  ret_tgt = nfp_prog_current_offset(nfp_prog) + 3;
  emit_br_relo(nfp_prog, BR_UNC, BR_OFF_RELO, 2,
        RELO_BR_GO_CALL_PUSH_REGS);
  offset_br = nfp_prog_current_offset(nfp_prog);
  wrp_immed_relo(nfp_prog, imm_b(nfp_prog), 0, RELO_IMMED_REL);
 } else {
  ret_tgt = nfp_prog_current_offset(nfp_prog) + 2;
  emit_br(nfp_prog, BR_UNC, meta->insn.imm, 1);
  offset_br = nfp_prog_current_offset(nfp_prog);
 }
 wrp_immed_relo(nfp_prog, ret_reg(nfp_prog), ret_tgt, RELO_IMMED_REL);

 if (!nfp_prog_confirm_current_offset(nfp_prog, ret_tgt))
  return -EINVAL;

 if (stack_depth) {
  tmp_reg = ur_load_imm_any(nfp_prog, stack_depth,
       stack_imm(nfp_prog));
  emit_alu(nfp_prog, stack_reg(nfp_prog),
    stack_reg(nfp_prog), ALU_OP_SUB, tmp_reg);
  emit_csr_wr(nfp_prog, stack_reg(nfp_prog),
       NFP_CSR_ACT_LM_ADDR0);
  wrp_nops(nfp_prog, 3);
 }

 meta->num_insns_after_br = nfp_prog_current_offset(nfp_prog);
 meta->num_insns_after_br -= offset_br;

 return 0;
}
