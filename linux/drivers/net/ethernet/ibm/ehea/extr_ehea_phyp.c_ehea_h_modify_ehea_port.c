
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct hcp_ehea_port_cb0 {int dummy; } ;


 int EHEA_BMASK_SET (int ,int const) ;
 int H_MEHEAPORT_CAT ;
 int H_MEHEAPORT_PN ;
 int H_MODIFY_HEA_PORT ;
 int PLPAR_HCALL9_BUFSIZE ;
 int __pa (void*) ;
 int ehea_dump (void*,int,char*) ;
 int ehea_plpar_hcall9 (int ,unsigned long*,int const,int,int const,int,int,int ,int ,int ,int ) ;

u64 ehea_h_modify_ehea_port(const u64 adapter_handle, const u16 port_num,
       const u8 cb_cat, const u64 select_mask,
       void *cb_addr)
{
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];
 u64 port_info;
 u64 arr_index = 0;
 u64 cb_logaddr = __pa(cb_addr);

 port_info = EHEA_BMASK_SET(H_MEHEAPORT_CAT, cb_cat)
    | EHEA_BMASK_SET(H_MEHEAPORT_PN, port_num);



 return ehea_plpar_hcall9(H_MODIFY_HEA_PORT,
     outs,
     adapter_handle,
     port_info,
     select_mask,
     arr_index,
     cb_logaddr,
     0, 0, 0, 0);
}
