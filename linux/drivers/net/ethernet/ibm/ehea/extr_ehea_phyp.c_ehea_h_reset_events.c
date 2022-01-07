
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_RESET_EVENTS ;
 int ehea_plpar_hcall_norets (int ,int const,int const,int const,int ,int ,int ,int ) ;

u64 ehea_h_reset_events(const u64 adapter_handle, const u64 neq_handle,
   const u64 event_mask)
{
 return ehea_plpar_hcall_norets(H_RESET_EVENTS,
           adapter_handle,
           neq_handle,
           event_mask,
           0, 0, 0, 0);
}
