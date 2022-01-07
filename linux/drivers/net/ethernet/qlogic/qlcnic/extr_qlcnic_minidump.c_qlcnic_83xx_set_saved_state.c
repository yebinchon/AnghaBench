
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct qlcnic_83xx_dump_template_hdr {size_t* saved_state; } ;



inline void qlcnic_83xx_set_saved_state(void *t_hdr, u32 index,
     u32 value)
{
 struct qlcnic_83xx_dump_template_hdr *hdr = t_hdr;

 hdr->saved_state[index] = value;
}
