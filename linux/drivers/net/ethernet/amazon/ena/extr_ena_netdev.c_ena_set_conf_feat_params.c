
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int min_mtu; int max_mtu; int dev_addr; } ;
struct TYPE_2__ {int max_mtu; int mac_addr; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ dev_attr; } ;
struct ena_adapter {int max_mtu; int mac_addr; struct net_device* netdev; } ;


 int ENA_MIN_MTU ;
 int ena_set_dev_offloads (struct ena_com_dev_get_features_ctx*,struct net_device*) ;
 int eth_hw_addr_random (struct net_device*) ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;

__attribute__((used)) static void ena_set_conf_feat_params(struct ena_adapter *adapter,
         struct ena_com_dev_get_features_ctx *feat)
{
 struct net_device *netdev = adapter->netdev;


 if (!is_valid_ether_addr(feat->dev_attr.mac_addr)) {
  eth_hw_addr_random(netdev);
  ether_addr_copy(adapter->mac_addr, netdev->dev_addr);
 } else {
  ether_addr_copy(adapter->mac_addr, feat->dev_attr.mac_addr);
  ether_addr_copy(netdev->dev_addr, adapter->mac_addr);
 }


 ena_set_dev_offloads(feat, netdev);

 adapter->max_mtu = feat->dev_attr.max_mtu;
 netdev->max_mtu = adapter->max_mtu;
 netdev->min_mtu = ENA_MIN_MTU;
}
