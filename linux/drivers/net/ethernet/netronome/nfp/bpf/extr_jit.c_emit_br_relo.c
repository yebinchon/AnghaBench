
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nfp_prog {int prog_len; int * prog; int error; } ;
typedef enum nfp_relo_type { ____Placeholder_nfp_relo_type } nfp_relo_type ;
typedef enum br_mask { ____Placeholder_br_mask } br_mask ;


 int BR_CSS_NONE ;
 int BR_EV_PIP_COND ;
 int BR_EV_PIP_UNCOND ;
 int BR_UNC ;
 int EFAULT ;
 int FIELD_PREP (int ,int) ;
 int OP_RELO_TYPE ;
 int __emit_br (struct nfp_prog*,int,int ,int ,int ,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void
emit_br_relo(struct nfp_prog *nfp_prog, enum br_mask mask, u16 addr, u8 defer,
      enum nfp_relo_type relo)
{
 if (mask == BR_UNC && defer > 2) {
  pr_err("BUG: branch defer out of bounds %d\n", defer);
  nfp_prog->error = -EFAULT;
  return;
 }

 __emit_br(nfp_prog, mask,
    mask != BR_UNC ? BR_EV_PIP_COND : BR_EV_PIP_UNCOND,
    BR_CSS_NONE, addr, defer);

 nfp_prog->prog[nfp_prog->prog_len - 1] |=
  FIELD_PREP(OP_RELO_TYPE, relo);
}
