
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nfp_prog {int dummy; } ;
typedef enum br_mask { ____Placeholder_br_mask } br_mask ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;


 int emit_alu (struct nfp_prog*,int ,int ,int,int ) ;
 int emit_br (struct nfp_prog*,int,int ,int ) ;
 int reg_a (int ) ;
 int reg_b (int ) ;
 int reg_none () ;

__attribute__((used)) static void
wrp_test_reg_one(struct nfp_prog *nfp_prog, u8 dst, enum alu_op alu_op, u8 src,
   enum br_mask br_mask, u16 off)
{
 emit_alu(nfp_prog, reg_none(), reg_a(dst), alu_op, reg_b(src));
 emit_br(nfp_prog, br_mask, off, 0);
}
