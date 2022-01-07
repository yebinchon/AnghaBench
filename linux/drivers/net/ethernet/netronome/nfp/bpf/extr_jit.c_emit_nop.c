
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;


 int UR_REG_IMM ;
 int __emit_immed (struct nfp_prog*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void emit_nop(struct nfp_prog *nfp_prog)
{
 __emit_immed(nfp_prog, UR_REG_IMM, UR_REG_IMM, 0, 0, 0, 0, 0, 0, 0);
}
