
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_hwinfo {int size; } ;


 scalar_t__ le32_to_cpu (int ) ;

u32 nfp_hwinfo_get_packed_str_size(struct nfp_hwinfo *hwinfo)
{
 return le32_to_cpu(hwinfo->size) - sizeof(u32);
}
