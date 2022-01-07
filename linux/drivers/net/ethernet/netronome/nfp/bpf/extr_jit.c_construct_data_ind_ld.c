
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int ALU_OP_ADD ;
 int ALU_OP_SUB ;
 int BR_BLO ;
 int BR_OFF_RELO ;
 int RELO_BR_GO_ABORT ;
 int data_ld (struct nfp_prog*,struct nfp_insn_meta*,int ,int ,int ) ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_br_relo (struct nfp_prog*,int ,int ,int ,int ) ;
 int imm_a (struct nfp_prog*) ;
 int imm_b (struct nfp_prog*) ;
 int imm_both (struct nfp_prog*) ;
 int plen_reg (struct nfp_prog*) ;
 int reg_a (int ) ;
 int reg_imm (int ) ;
 int reg_none () ;
 int ur_load_imm_any (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int
construct_data_ind_ld(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
        u16 offset, u16 src, u8 size)
{
 swreg tmp_reg;


 tmp_reg = ur_load_imm_any(nfp_prog, offset, imm_b(nfp_prog));
 emit_alu(nfp_prog, imm_both(nfp_prog), reg_a(src), ALU_OP_ADD, tmp_reg);


 emit_alu(nfp_prog, imm_a(nfp_prog),
   imm_a(nfp_prog), ALU_OP_ADD, reg_imm(size));
 emit_alu(nfp_prog, reg_none(),
   plen_reg(nfp_prog), ALU_OP_SUB, imm_a(nfp_prog));
 emit_br_relo(nfp_prog, BR_BLO, BR_OFF_RELO, 0, RELO_BR_GO_ABORT);


 return data_ld(nfp_prog, meta, imm_b(nfp_prog), 0, size);
}
