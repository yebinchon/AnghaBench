
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FUNCTION_COLLECT_VPD ;
 long cxl_h_control_function (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_collect_vpd(u64 unit_address, u64 record, u64 list_address,
         u64 num, u64 *out)
{
 return cxl_h_control_function(unit_address,
    H_CONTROL_CA_FUNCTION_COLLECT_VPD,
    record, list_address, num, 0,
    out);
}
