
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_82xx_dump_template_hdr {int drv_cap_mask; } ;



void qlcnic_82xx_store_cap_mask(void *tmpl_hdr, u32 mask)
{
 struct qlcnic_82xx_dump_template_hdr *hdr = tmpl_hdr;

 hdr->drv_cap_mask = mask;
}
