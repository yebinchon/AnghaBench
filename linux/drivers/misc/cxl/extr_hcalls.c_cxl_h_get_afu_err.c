
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FUNCTION_GET_AFU_ERR ;
 long cxl_h_control_function (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_get_afu_err(u64 unit_address, u64 offset,
  u64 buf_address, u64 len)
{
 return cxl_h_control_function(unit_address,
    H_CONTROL_CA_FUNCTION_GET_AFU_ERR,
    offset, buf_address, len, 0,
    ((void*)0));
}
