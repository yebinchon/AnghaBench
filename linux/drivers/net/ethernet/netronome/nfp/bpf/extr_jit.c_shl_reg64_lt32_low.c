
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_prog {int dummy; } ;


 int ALU_OP_OR ;
 int SHF_OP_NONE ;
 int SHF_SC_L_SHF ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int emit_shf_indir (struct nfp_prog*,int ,int ,int ,int ,int ) ;
 int reg_a (int ) ;
 int reg_b (int ) ;
 int reg_both (int ) ;
 int reg_imm (int ) ;
 int reg_none () ;

__attribute__((used)) static void shl_reg64_lt32_low(struct nfp_prog *nfp_prog, u8 dst, u8 src)
{
 emit_alu(nfp_prog, reg_none(), reg_a(src), ALU_OP_OR, reg_imm(0));
 emit_shf_indir(nfp_prog, reg_both(dst), reg_none(), SHF_OP_NONE,
         reg_b(dst), SHF_SC_L_SHF);
}
