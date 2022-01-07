
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;


 int SHF_SC_R_ROT ;
 int emit_ld_field (struct nfp_prog*,int ,int,int ,int ,int) ;
 int reg_a (int ) ;
 int reg_both (int ) ;

__attribute__((used)) static void wrp_end32(struct nfp_prog *nfp_prog, swreg reg_in, u8 gpr_out)
{
 emit_ld_field(nfp_prog, reg_both(gpr_out), 0xf, reg_in,
        SHF_SC_R_ROT, 8);
 emit_ld_field(nfp_prog, reg_both(gpr_out), 0x5, reg_a(gpr_out),
        SHF_SC_R_ROT, 16);
}
