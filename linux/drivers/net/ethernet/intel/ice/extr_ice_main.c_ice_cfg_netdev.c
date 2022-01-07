
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int watchdog_timeo; int max_mtu; int min_mtu; int priv_flags; int * perm_addr; int * dev_addr; } ;
struct TYPE_8__ {int ena_tc; } ;
struct ice_vsi {scalar_t__ type; struct net_device* netdev; TYPE_4__ tc_cfg; TYPE_3__* port_info; int alloc_rxq; int alloc_txq; struct ice_pf* back; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_6__ {int * perm_addr; } ;
struct TYPE_7__ {TYPE_2__ mac; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_MIN_MTU ;
 int HZ ;
 int ICE_MAX_MTU ;
 scalar_t__ ICE_VSI_PF ;
 int IFF_UNICAST_FLT ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev_mqs (int,int ,int ) ;
 int ether_addr_copy (int *,int *) ;
 int ice_set_netdev_features (struct net_device*) ;
 int ice_set_ops (struct net_device*) ;
 int ice_vsi_cfg_netdev_tc (struct ice_vsi*,int ) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int ice_cfg_netdev(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 struct ice_netdev_priv *np;
 struct net_device *netdev;
 u8 mac_addr[ETH_ALEN];
 int err;

 netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
        vsi->alloc_rxq);
 if (!netdev)
  return -ENOMEM;

 vsi->netdev = netdev;
 np = netdev_priv(netdev);
 np->vsi = vsi;

 ice_set_netdev_features(netdev);

 ice_set_ops(netdev);

 if (vsi->type == ICE_VSI_PF) {
  SET_NETDEV_DEV(netdev, &pf->pdev->dev);
  ether_addr_copy(mac_addr, vsi->port_info->mac.perm_addr);
  ether_addr_copy(netdev->dev_addr, mac_addr);
  ether_addr_copy(netdev->perm_addr, mac_addr);
 }

 netdev->priv_flags |= IFF_UNICAST_FLT;


 ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);


 netdev->watchdog_timeo = 5 * HZ;

 netdev->min_mtu = ETH_MIN_MTU;
 netdev->max_mtu = ICE_MAX_MTU;

 err = register_netdev(vsi->netdev);
 if (err)
  return err;

 netif_carrier_off(vsi->netdev);


 netif_tx_stop_all_queues(vsi->netdev);

 return 0;
}
