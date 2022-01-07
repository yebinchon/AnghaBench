
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_FREE_RESOURCE ;
 int ehea_plpar_hcall_norets (int ,int const,int const,int ,int ,int ,int ,int ) ;

u64 ehea_h_free_resource(const u64 adapter_handle, const u64 res_handle,
    u64 force_bit)
{
 return ehea_plpar_hcall_norets(H_FREE_RESOURCE,
           adapter_handle,
           res_handle,
           force_bit,
           0, 0, 0, 0);
}
