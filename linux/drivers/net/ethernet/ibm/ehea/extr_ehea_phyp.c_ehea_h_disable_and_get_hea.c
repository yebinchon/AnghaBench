
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_DISABLE_AND_GET_HEA ;
 int H_DISABLE_GET_EHEA_WQE_P ;
 int PLPAR_HCALL9_BUFSIZE ;
 int ehea_plpar_hcall9 (int ,unsigned long*,int const,int ,int const,int ,int ,int ,int ,int ,int ) ;

u64 ehea_h_disable_and_get_hea(const u64 adapter_handle, const u64 qp_handle)
{
 unsigned long outs[PLPAR_HCALL9_BUFSIZE];

 return ehea_plpar_hcall9(H_DISABLE_AND_GET_HEA,
     outs,
     adapter_handle,
     H_DISABLE_GET_EHEA_WQE_P,
     qp_handle,
     0, 0, 0, 0, 0, 0);
}
