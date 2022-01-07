
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct nfp_prog {int dummy; } ;
struct TYPE_2__ {int dst_reg; scalar_t__ imm; } ;
struct nfp_insn_meta {TYPE_1__ insn; } ;


 struct nfp_insn_meta* nfp_meta_prev (struct nfp_insn_meta*) ;
 int reg_a (int) ;
 int reg_both (int) ;
 int wrp_immed (struct nfp_prog*,int ,scalar_t__) ;
 int wrp_mov (struct nfp_prog*,int ,int ) ;

__attribute__((used)) static int imm_ld8_part2(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 struct nfp_insn_meta *prev = nfp_meta_prev(meta);
 u32 imm_lo, imm_hi;
 u8 dst;

 dst = prev->insn.dst_reg * 2;
 imm_lo = prev->insn.imm;
 imm_hi = meta->insn.imm;

 wrp_immed(nfp_prog, reg_both(dst), imm_lo);


 if (imm_hi == imm_lo)
  wrp_mov(nfp_prog, reg_both(dst + 1), reg_a(dst));
 else
  wrp_immed(nfp_prog, reg_both(dst + 1), imm_hi);

 return 0;
}
