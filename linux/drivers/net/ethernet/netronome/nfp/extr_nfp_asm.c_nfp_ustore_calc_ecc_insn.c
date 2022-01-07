
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int NFP_USTORE_ECC_POLY_WORDS ;
 int NFP_USTORE_OP_BITS ;
 int* nfp_ustore_ecc_polynomials ;
 int parity (int) ;

u64 nfp_ustore_calc_ecc_insn(u64 insn)
{
 u8 ecc = 0;
 int i;

 for (i = 0; i < NFP_USTORE_ECC_POLY_WORDS; i++)
  ecc |= parity(nfp_ustore_ecc_polynomials[i] & insn) << i;

 return insn | (u64)ecc << NFP_USTORE_OP_BITS;
}
