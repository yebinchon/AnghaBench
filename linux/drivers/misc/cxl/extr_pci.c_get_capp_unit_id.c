
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct device_node {int dummy; } ;


 int P8_CAPP_UNIT0_ID ;
 int P8_CAPP_UNIT1_ID ;
 int P9_CAPP_UNIT0_ID ;
 int P9_CAPP_UNIT1_ID ;
 int PVR_POWER8NVL ;
 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;
 int pvr_version_is (int ) ;

__attribute__((used)) static u64 get_capp_unit_id(struct device_node *np, u32 phb_index)
{







 if (cxl_is_power8()) {
  if (!pvr_version_is(PVR_POWER8NVL))
   return P8_CAPP_UNIT0_ID;

  if (phb_index == 0)
   return P8_CAPP_UNIT0_ID;

  if (phb_index == 1)
   return P8_CAPP_UNIT1_ID;
 }







 if (cxl_is_power9()) {
  if (phb_index == 0)
   return P9_CAPP_UNIT0_ID;

  if (phb_index == 3)
   return P9_CAPP_UNIT1_ID;
 }

 return 0;
}
