
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int swreg ;
struct nfp_prog {int dummy; } ;
typedef enum immed_shift { ____Placeholder_immed_shift } immed_shift ;


 int IMMED_SHIFT_0B ;
 int IMMED_SHIFT_2B ;
 int IMMED_WIDTH_ALL ;
 int IMMED_WIDTH_WORD ;
 int emit_immed (struct nfp_prog*,int ,int,int ,int,int) ;
 scalar_t__ pack_immed (int,int*,int*) ;

__attribute__((used)) static void wrp_immed(struct nfp_prog *nfp_prog, swreg dst, u32 imm)
{
 enum immed_shift shift;
 u16 val;

 if (pack_immed(imm, &val, &shift)) {
  emit_immed(nfp_prog, dst, val, IMMED_WIDTH_ALL, 0, shift);
 } else if (pack_immed(~imm, &val, &shift)) {
  emit_immed(nfp_prog, dst, val, IMMED_WIDTH_ALL, 1, shift);
 } else {
  emit_immed(nfp_prog, dst, imm & 0xffff, IMMED_WIDTH_ALL,
      0, IMMED_SHIFT_0B);
  emit_immed(nfp_prog, dst, imm >> 16, IMMED_WIDTH_WORD,
      0, IMMED_SHIFT_2B);
 }
}
