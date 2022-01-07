
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT_ULL (int) ;
 int EINVAL ;
 int NFP_CPP_TARGET_CT_XPB ;
 int NFP_CPP_TARGET_MU ;

__attribute__((used)) static int nfp_decode_basic(u64 addr, int *dest_island, int cpp_tgt,
       int mode, bool addr40, int isld1, int isld0)
{
 int iid_lsb, idx_lsb;


 if (cpp_tgt == NFP_CPP_TARGET_MU || cpp_tgt == NFP_CPP_TARGET_CT_XPB)
  return -EINVAL;

 switch (mode) {
 case 0:
  iid_lsb = addr40 ? 34 : 26;
  *dest_island = (addr >> iid_lsb) & 0x3F;
  return 0;
 case 1:
  idx_lsb = addr40 ? 39 : 31;
  if (addr & BIT_ULL(idx_lsb))
   *dest_island = isld1;
  else
   *dest_island = isld0;

  return 0;
 case 2:
  isld0 &= ~1;
  isld1 &= ~1;

  idx_lsb = addr40 ? 39 : 31;
  iid_lsb = idx_lsb - 1;

  if (addr & BIT_ULL(idx_lsb))
   *dest_island = isld1 | (int)((addr >> iid_lsb) & 1);
  else
   *dest_island = isld0 | (int)((addr >> iid_lsb) & 1);

  return 0;
 case 3:
  isld0 &= ~3;
  isld1 &= ~3;

  idx_lsb = addr40 ? 39 : 31;
  iid_lsb = idx_lsb - 2;

  if (addr & BIT_ULL(idx_lsb))
   *dest_island = isld1 | (int)((addr >> iid_lsb) & 3);
  else
   *dest_island = isld0 | (int)((addr >> iid_lsb) & 3);

  return 0;
 default:
  return -EINVAL;
 }
}
