
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FUNCTION_RESET ;
 long cxl_h_control_function (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_reset_afu(u64 unit_address)
{
 return cxl_h_control_function(unit_address,
    H_CONTROL_CA_FUNCTION_RESET,
    0, 0, 0, 0,
    ((void*)0));
}
