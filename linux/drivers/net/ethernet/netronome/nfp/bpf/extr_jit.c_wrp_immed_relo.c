
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int swreg ;
struct nfp_prog {int prog_len; int * prog; int error; } ;
typedef enum nfp_relo_type { ____Placeholder_nfp_relo_type } nfp_relo_type ;


 int EFAULT ;
 int FIELD_PREP (int ,int) ;
 int IMMED_SHIFT_0B ;
 int IMMED_WIDTH_ALL ;
 int OP_RELO_TYPE ;
 int emit_immed (struct nfp_prog*,int ,int,int ,int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static void
wrp_immed_relo(struct nfp_prog *nfp_prog, swreg dst, u32 imm,
        enum nfp_relo_type relo)
{
 if (imm > 0xffff) {
  pr_err("relocation of a large immediate!\n");
  nfp_prog->error = -EFAULT;
  return;
 }
 emit_immed(nfp_prog, dst, imm, IMMED_WIDTH_ALL, 0, IMMED_SHIFT_0B);

 nfp_prog->prog[nfp_prog->prog_len - 1] |=
  FIELD_PREP(OP_RELO_TYPE, relo);
}
