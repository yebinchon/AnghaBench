
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_pf {int mip; } ;
struct nfp_dump_tl {int dummy; } ;


 int ALIGN8 (scalar_t__) ;
 int nfp_mip_name (int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int nfp_calc_fwname_tlv_size(struct nfp_pf *pf)
{
 u32 fwname_len = strlen(nfp_mip_name(pf->mip));

 return sizeof(struct nfp_dump_tl) + ALIGN8(fwname_len + 1);
}
