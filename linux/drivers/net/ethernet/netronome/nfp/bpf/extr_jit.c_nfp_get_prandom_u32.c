
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_prog {int dummy; } ;
struct nfp_insn_meta {int dummy; } ;


 int IMMED_SHIFT_0B ;
 int IMMED_WIDTH_ALL ;
 int NFP_CSR_PSEUDO_RND_NUM ;
 int __emit_csr_rd (struct nfp_prog*,int ) ;
 int emit_immed (struct nfp_prog*,int ,int ,int ,int,int ) ;
 int reg_both (int) ;

__attribute__((used)) static int
nfp_get_prandom_u32(struct nfp_prog *nfp_prog, struct nfp_insn_meta *meta)
{
 __emit_csr_rd(nfp_prog, NFP_CSR_PSEUDO_RND_NUM);

 emit_immed(nfp_prog, reg_both(0), 0,
     IMMED_WIDTH_ALL, 0, IMMED_SHIFT_0B);
 emit_immed(nfp_prog, reg_both(1), 0,
     IMMED_WIDTH_ALL, 0, IMMED_SHIFT_0B);
 return 0;
}
