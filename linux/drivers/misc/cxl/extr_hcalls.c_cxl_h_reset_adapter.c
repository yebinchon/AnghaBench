
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int H_CONTROL_CA_FACILITY_RESET ;
 long cxl_h_control_facility (int ,int ,int ,int ,int ,int ,int *) ;

long cxl_h_reset_adapter(u64 unit_address)
{
 return cxl_h_control_facility(unit_address,
    H_CONTROL_CA_FACILITY_RESET,
    0, 0, 0, 0,
    ((void*)0));
}
