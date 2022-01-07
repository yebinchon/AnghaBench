
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;


 int ALU_OP_AND ;
 int GENMASK (int,int ) ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int plen_reg (struct nfp_prog*) ;
 int pv_len (struct nfp_prog*) ;
 int wrp_immed (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void nfp_intro(struct nfp_prog *nfp_prog)
{
 wrp_immed(nfp_prog, plen_reg(nfp_prog), GENMASK(13, 0));
 emit_alu(nfp_prog, plen_reg(nfp_prog),
   plen_reg(nfp_prog), ALU_OP_AND, pv_len(nfp_prog));
}
