
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_82xx_dump_template_hdr {int * sys_info; } ;



void qlcnic_82xx_set_sys_info(void *t_hdr, int idx, u32 value)
{
 struct qlcnic_82xx_dump_template_hdr *hdr = t_hdr;

 hdr->sys_info[idx] = value;
}
