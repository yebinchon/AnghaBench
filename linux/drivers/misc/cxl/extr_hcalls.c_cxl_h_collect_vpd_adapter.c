
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FACILITY_COLLECT_VPD ;
 long cxl_h_control_facility (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_collect_vpd_adapter(u64 unit_address, u64 list_address,
          u64 num, u64 *out)
{
 return cxl_h_control_facility(unit_address,
    H_CONTROL_CA_FACILITY_COLLECT_VPD,
    list_address, num, 0, 0,
    out);
}
