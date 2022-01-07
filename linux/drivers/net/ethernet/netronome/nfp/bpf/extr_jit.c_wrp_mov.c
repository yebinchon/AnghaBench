
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swreg ;
struct nfp_prog {int dummy; } ;


 int ALU_OP_NONE ;
 int emit_alu (struct nfp_prog*,int ,int ,int ,int ) ;
 int reg_none () ;

__attribute__((used)) static void wrp_mov(struct nfp_prog *nfp_prog, swreg dst, swreg src)
{
 emit_alu(nfp_prog, dst, reg_none(), ALU_OP_NONE, src);
}
