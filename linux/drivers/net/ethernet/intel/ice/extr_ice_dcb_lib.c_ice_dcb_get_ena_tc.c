
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ice_dcbx_cfg {int dummy; } ;


 scalar_t__ BIT (scalar_t__) ;
 scalar_t__ ice_dcb_get_num_tc (struct ice_dcbx_cfg*) ;

u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg *dcbcfg)
{
 u8 i, num_tc, ena_tc = 1;

 num_tc = ice_dcb_get_num_tc(dcbcfg);

 for (i = 0; i < num_tc; i++)
  ena_tc |= BIT(i);

 return ena_tc;
}
