
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int src_reg; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 int ALU_OP_AND_NOT_B ;
 int BR_BEQ ;
 int EINVAL ;
 int NFP_NET_RXR_MAX ;
 int PKT_VEL_QSEL_SET_BIT ;
 int SHF_OP_OR ;
 int SHF_SC_L_SHF ;
 int SHF_SC_NONE ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,scalar_t__,int) ;
 int emit_ld_field (struct nfp_prog*,int ,int,int ,int ,int ) ;
 int emit_shf (struct nfp_prog*,int ,int ,int ,int ,int ,int ) ;
 int nfp_prog_confirm_current_offset (struct nfp_prog*,scalar_t__) ;
 scalar_t__ nfp_prog_current_offset (struct nfp_prog*) ;
 int pv_qsel_set (struct nfp_prog*) ;
 int pv_qsel_val (struct nfp_prog*) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_imm (int) ;
 int reg_none () ;

__attribute__((used)) static int
nfp_queue_select(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 u32 jmp_tgt;

 jmp_tgt = nfp_prog_current_offset(nfp_prog) + 5;


 emit_alu(nfp_prog, reg_none(), reg_a(meta->insn.src_reg * 2),
   ALU_OP_AND_NOT_B, reg_imm(0xff));
 emit_br(nfp_prog, BR_BEQ, jmp_tgt, 2);


 emit_shf(nfp_prog, pv_qsel_set(nfp_prog),
   pv_qsel_set(nfp_prog), SHF_OP_OR, reg_imm(1),
   SHF_SC_L_SHF, PKT_VEL_QSEL_SET_BIT);
 emit_ld_field(nfp_prog,
        pv_qsel_val(nfp_prog), 0x1, reg_b(meta->insn.src_reg * 2),
        SHF_SC_NONE, 0);



 emit_ld_field(nfp_prog,
        pv_qsel_val(nfp_prog), 0x1, reg_imm(NFP_NET_RXR_MAX),
        SHF_SC_NONE, 0);

 if (!nfp_prog_confirm_current_offset(nfp_prog, jmp_tgt))
  return -EINVAL;

 return 0;
}
