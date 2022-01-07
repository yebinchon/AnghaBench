
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FUNCTION_SUSPEND_PROCESS ;
 long cxl_h_control_function (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_suspend_process(u64 unit_address, u64 process_token)
{
 return cxl_h_control_function(unit_address,
    H_CONTROL_CA_FUNCTION_SUSPEND_PROCESS,
    process_token, 0, 0, 0,
    ((void*)0));
}
