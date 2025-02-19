
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tc_configuration {scalar_t__ dcb_pfc; } ;
struct ixgbe_dcb_config {struct tc_configuration* tc_config; } ;


 int BIT (int) ;
 int MAX_TRAFFIC_CLASS ;
 scalar_t__ pfc_disabled ;

void ixgbe_dcb_unpack_pfc(struct ixgbe_dcb_config *cfg, u8 *pfc_en)
{
 struct tc_configuration *tc_config = &cfg->tc_config[0];
 int tc;

 for (*pfc_en = 0, tc = 0; tc < MAX_TRAFFIC_CLASS; tc++) {
  if (tc_config[tc].dcb_pfc != pfc_disabled)
   *pfc_en |= BIT(tc);
 }
}
