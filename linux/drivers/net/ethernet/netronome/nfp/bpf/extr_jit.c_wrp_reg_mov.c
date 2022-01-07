
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_prog {int dummy; } ;


 int reg_b (int ) ;
 int reg_both (int ) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static void wrp_reg_mov(struct nfp_prog *nfp_prog, u16 dst, u16 src)
{
 wrp_mov(nfp_prog, reg_both(dst), reg_b(src));
}
