
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tc_configuration {int desc_credits_max; } ;
struct ixgbe_dcb_config {struct tc_configuration* tc_config; } ;


 int MAX_TRAFFIC_CLASS ;

void ixgbe_dcb_unpack_max(struct ixgbe_dcb_config *cfg, u16 *max)
{
 struct tc_configuration *tc_config = &cfg->tc_config[0];
 int tc;

 for (tc = 0; tc < MAX_TRAFFIC_CLASS; tc++)
  max[tc] = tc_config[tc].desc_credits_max;
}
