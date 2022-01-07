
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int enabled_tc; TYPE_2__* tc_info; int numtc; } ;
struct i40e_vsi {TYPE_3__ tc_config; struct i40e_pf* back; struct net_device* netdev; } ;
struct TYPE_4__ {size_t* prioritytable; } ;
struct i40e_dcbx_config {TYPE_1__ etscfg; } ;
struct i40e_hw {struct i40e_dcbx_config local_dcbx_config; } ;
struct i40e_pf {int flags; struct i40e_hw hw; } ;
struct TYPE_5__ {size_t netdev_tc; int qoffset; int qcount; } ;


 int BIT (int) ;
 int I40E_FLAG_TC_MQPRIO ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int I40E_MAX_USER_PRIORITY ;
 int netdev_reset_tc (struct net_device*) ;
 scalar_t__ netdev_set_num_tc (struct net_device*,int ) ;
 int netdev_set_prio_tc_map (struct net_device*,int,size_t) ;
 int netdev_set_tc_queue (struct net_device*,size_t,int ,int ) ;

__attribute__((used)) static void i40e_vsi_config_netdev_tc(struct i40e_vsi *vsi, u8 enabled_tc)
{
 struct net_device *netdev = vsi->netdev;
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 u8 netdev_tc = 0;
 int i;
 struct i40e_dcbx_config *dcbcfg = &hw->local_dcbx_config;

 if (!netdev)
  return;

 if (!enabled_tc) {
  netdev_reset_tc(netdev);
  return;
 }


 if (netdev_set_num_tc(netdev, vsi->tc_config.numtc))
  return;


 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {







  if (vsi->tc_config.enabled_tc & BIT(i))
   netdev_set_tc_queue(netdev,
     vsi->tc_config.tc_info[i].netdev_tc,
     vsi->tc_config.tc_info[i].qcount,
     vsi->tc_config.tc_info[i].qoffset);
 }

 if (pf->flags & I40E_FLAG_TC_MQPRIO)
  return;


 for (i = 0; i < I40E_MAX_USER_PRIORITY; i++) {

  u8 ets_tc = dcbcfg->etscfg.prioritytable[i];

  netdev_tc = vsi->tc_config.tc_info[ets_tc].netdev_tc;
  netdev_set_prio_tc_map(netdev, i, netdev_tc);
 }
}
