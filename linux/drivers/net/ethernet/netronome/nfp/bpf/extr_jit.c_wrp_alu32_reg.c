
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; int src_reg; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;
typedef enum alu_op { ____Placeholder_alu_op } alu_op ;


 int emit_alu (struct nfp_prog*,int ,int ,int,int ) ;
 int reg_a (int) ;
 int reg_b (int) ;
 int reg_both (int) ;
 int wrp_zext (struct nfp_prog*,struct nfp_insn_meta*,int) ;

__attribute__((used)) static int
wrp_alu32_reg(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta,
       enum alu_op alu_op)
{
 u8 dst = meta->insn.dst_reg * 2, src = meta->insn.src_reg * 2;

 emit_alu(nfp_prog, reg_both(dst), reg_a(dst), alu_op, reg_b(src));
 wrp_zext(nfp_prog, meta, dst);

 return 0;
}
