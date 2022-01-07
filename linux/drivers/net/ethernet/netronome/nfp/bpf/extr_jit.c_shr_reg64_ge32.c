
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_prog {int dummy; } ;


 int ALU_OP_OR ;
 int SHF_OP_NONE ;
 int SHF_SC_R_SHF ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_shf_indir (struct nfp_prog*,int ,int ,int ,int ,int ) ;
 int reg_a (scalar_t__) ;
 int reg_b (scalar_t__) ;
 int reg_both (scalar_t__) ;
 int reg_imm (int ) ;
 int reg_none () ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void shr_reg64_ge32(struct nfp_prog *nfp_prog, u8 dst, u8 src)
{
 emit_alu(nfp_prog, reg_none(), reg_a(src), ALU_OP_OR, reg_imm(0));
 emit_shf_indir(nfp_prog, reg_both(dst), reg_none(), SHF_OP_NONE,
         reg_b(dst + 1), SHF_SC_R_SHF);
 wrp_immed(nfp_prog, reg_both(dst + 1), 0);
}
