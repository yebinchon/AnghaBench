
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_fw_dump {int version; int use_pex_dma; int cap_mask; int offset; int num_entries; int tmpl_hdr_size; struct qlcnic_83xx_dump_template_hdr* tmpl_hdr; } ;
struct qlcnic_83xx_dump_template_hdr {int version; int cap_mask; int drv_cap_mask; int offset; int num_entries; int size; } ;


 int QLCNIC_TEMPLATE_VERSION ;

void qlcnic_83xx_cache_tmpl_hdr_values(struct qlcnic_fw_dump *fw_dump)
{
 struct qlcnic_83xx_dump_template_hdr *hdr;

 hdr = fw_dump->tmpl_hdr;
 fw_dump->tmpl_hdr_size = hdr->size;
 fw_dump->version = hdr->version;
 fw_dump->num_entries = hdr->num_entries;
 fw_dump->offset = hdr->offset;

 hdr->drv_cap_mask = hdr->cap_mask;
 fw_dump->cap_mask = hdr->cap_mask;

 fw_dump->use_pex_dma = (fw_dump->version & 0xfffff) >=
          QLCNIC_TEMPLATE_VERSION;
}
