
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_hwinfo {int version; } ;


 int NFP_HWINFO_VERSION_UPDATING ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static bool nfp_hwinfo_is_updating(struct nfp_hwinfo *hwinfo)
{
 return le32_to_cpu(hwinfo->version) & NFP_HWINFO_VERSION_UPDATING;
}
