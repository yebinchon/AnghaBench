
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_82xx_dump_template_hdr {int * cap_sizes; } ;



inline u32 qlcnic_82xx_get_cap_size(void *t_hdr, int index)
{
 struct qlcnic_82xx_dump_template_hdr *hdr = t_hdr;

 return hdr->cap_sizes[index];
}
