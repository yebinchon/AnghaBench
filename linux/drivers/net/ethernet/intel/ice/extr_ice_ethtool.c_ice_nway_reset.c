
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ice_vsi {TYPE_3__* back; struct ice_port_info* port_info; } ;
struct ice_port_info {TYPE_2__* hw; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_6__ {int state; } ;
struct TYPE_4__ {int sq_last_status; } ;
struct TYPE_5__ {TYPE_1__ adminq; } ;


 int EIO ;
 int __ICE_DOWN ;
 int ice_aq_set_link_restart_an (struct ice_port_info*,int,int *) ;
 int netdev_info (struct net_device*,char*,int,int ) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ice_nway_reset(struct net_device *netdev)
{

 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_port_info *pi;
 enum ice_status status;

 pi = vsi->port_info;

 if (!test_bit(__ICE_DOWN, vsi->back->state))
  status = ice_aq_set_link_restart_an(pi, 1, ((void*)0));
 else
  status = ice_aq_set_link_restart_an(pi, 0, ((void*)0));

 if (status) {
  netdev_info(netdev, "link restart failed, err %d aq_err %d\n",
       status, pi->hw->adminq.sq_last_status);
  return -EIO;
 }

 return 0;
}
