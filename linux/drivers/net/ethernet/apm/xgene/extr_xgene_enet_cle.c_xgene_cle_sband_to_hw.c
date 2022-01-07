
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum xgene_cle_prot_version { ____Placeholder_xgene_cle_prot_version } xgene_cle_prot_version ;
typedef enum xgene_cle_prot_type { ____Placeholder_xgene_cle_prot_type } xgene_cle_prot_type ;


 int SB_HDRLEN ;
 int SB_IPFRAG ;
 int SB_IPPROT ;
 int SB_IPVER ;
 int SET_VAL (int ,int) ;

__attribute__((used)) static void xgene_cle_sband_to_hw(u8 frag, enum xgene_cle_prot_version ver,
      enum xgene_cle_prot_type type, u32 len,
      u32 *reg)
{
 *reg = SET_VAL(SB_IPFRAG, frag) |
  SET_VAL(SB_IPPROT, type) |
  SET_VAL(SB_IPVER, ver) |
  SET_VAL(SB_HDRLEN, len);
}
