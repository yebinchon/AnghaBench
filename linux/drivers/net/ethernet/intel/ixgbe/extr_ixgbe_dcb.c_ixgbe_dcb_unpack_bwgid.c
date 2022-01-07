
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tc_configuration {TYPE_1__* path; } ;
struct ixgbe_dcb_config {struct tc_configuration* tc_config; } ;
struct TYPE_2__ {int bwg_id; } ;


 int MAX_TRAFFIC_CLASS ;

void ixgbe_dcb_unpack_bwgid(struct ixgbe_dcb_config *cfg, int direction,
       u8 *bwgid)
{
 struct tc_configuration *tc_config = &cfg->tc_config[0];
 int tc;

 for (tc = 0; tc < MAX_TRAFFIC_CLASS; tc++)
  bwgid[tc] = tc_config[tc].path[direction].bwg_id;
}
