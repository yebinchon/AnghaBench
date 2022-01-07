
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FUNCTION_GET_FUNCTION_ERR_INT ;
 long cxl_h_control_function (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_get_fn_error_interrupt(u64 unit_address, u64 *reg)
{
 return cxl_h_control_function(unit_address,
    H_CONTROL_CA_FUNCTION_GET_FUNCTION_ERR_INT,
    0, 0, 0, 0, reg);
}
