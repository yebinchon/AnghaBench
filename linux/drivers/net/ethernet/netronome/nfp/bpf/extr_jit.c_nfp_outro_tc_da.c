
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {void* tgt_abort; void* tgt_out; } ;


 int ALU_OP_OR ;
 int ALU_OP_SUB ;
 int BR_BLO ;
 int BR_OFF_RELO ;
 int BR_UNC ;
 int NFP_BPF_ABI_FLAGS ;
 int RELO_BR_NEXT_PKT ;
 int SHF_OP_AND ;
 int SHF_OP_NONE ;
 int SHF_OP_OR ;
 int SHF_SC_L_SHF ;
 int SHF_SC_R_SHF ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br (struct nfp_prog*,int ,void*,int ) ;
 int emit_br_relo (struct nfp_prog*,int ,int ,int,int ) ;
 int emit_ld_field (struct nfp_prog*,int ,int,int ,int ,int) ;
 int emit_shf (struct nfp_prog*,int ,int ,int ,int ,int ,int) ;
 void* nfp_prog_current_offset (struct nfp_prog*) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_imm (int) ;
 int reg_none () ;
 int wrp_immed (struct nfp_prog*,int ,int) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void nfp_outro_tc_da(struct nfp_prog *nfp_prog)
{
 nfp_prog->tgt_abort = nfp_prog_current_offset(nfp_prog);

 emit_br_relo(nfp_prog, BR_UNC, BR_OFF_RELO, 2, RELO_BR_NEXT_PKT);

 wrp_mov(nfp_prog, reg_a(0), NFP_BPF_ABI_FLAGS);
 emit_ld_field(nfp_prog, reg_a(0), 0xc, reg_imm(0x11), SHF_SC_L_SHF, 16);


 nfp_prog->tgt_out = nfp_prog_current_offset(nfp_prog);


 emit_alu(nfp_prog, reg_none(), reg_imm(7), ALU_OP_SUB, reg_b(0));
 emit_br(nfp_prog, BR_BLO, nfp_prog->tgt_abort, 0);
 wrp_mov(nfp_prog, reg_a(0), NFP_BPF_ABI_FLAGS);

 wrp_immed(nfp_prog, reg_b(2), 0x41221211);
 wrp_immed(nfp_prog, reg_b(3), 0x41001211);

 emit_shf(nfp_prog, reg_a(1),
   reg_none(), SHF_OP_NONE, reg_b(0), SHF_SC_L_SHF, 2);

 emit_alu(nfp_prog, reg_none(), reg_a(1), ALU_OP_OR, reg_imm(0));
 emit_shf(nfp_prog, reg_a(2),
   reg_imm(0xf), SHF_OP_AND, reg_b(2), SHF_SC_R_SHF, 0);

 emit_alu(nfp_prog, reg_none(), reg_a(1), ALU_OP_OR, reg_imm(0));
 emit_shf(nfp_prog, reg_b(2),
   reg_imm(0xf), SHF_OP_AND, reg_b(3), SHF_SC_R_SHF, 0);

 emit_br_relo(nfp_prog, BR_UNC, BR_OFF_RELO, 2, RELO_BR_NEXT_PKT);

 emit_shf(nfp_prog, reg_b(2),
   reg_a(2), SHF_OP_OR, reg_b(2), SHF_SC_L_SHF, 4);
 emit_ld_field(nfp_prog, reg_a(0), 0xc, reg_b(2), SHF_SC_L_SHF, 16);
}
