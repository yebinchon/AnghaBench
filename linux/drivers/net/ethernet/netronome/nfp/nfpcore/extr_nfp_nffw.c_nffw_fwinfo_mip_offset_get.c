
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nffw_fwinfo {int mip_offset_lo; int loaded__mu_da__mip_off_hi; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static u64 nffw_fwinfo_mip_offset_get(const struct nffw_fwinfo *fi)
{
 u64 mip_off_hi = le32_to_cpu(fi->loaded__mu_da__mip_off_hi);

 return (mip_off_hi & 0xFF) << 32 | le32_to_cpu(fi->mip_offset_lo);
}
