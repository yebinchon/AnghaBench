
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nffw_fwinfo {int loaded__mu_da__mip_off_hi; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 nffw_fwinfo_mip_mu_da_get(const struct nffw_fwinfo *fi)
{
 return (le32_to_cpu(fi->loaded__mu_da__mip_off_hi) >> 8) & 1;
}
