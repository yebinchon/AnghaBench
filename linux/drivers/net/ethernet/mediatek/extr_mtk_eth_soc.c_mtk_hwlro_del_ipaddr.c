
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mtk_mac {int id; int hwlro_ip_cnt; scalar_t__* hwlro_ip; struct mtk_eth* hw; } ;
struct mtk_eth {int dummy; } ;
struct ethtool_rxnfc {int fs; } ;
struct ethtool_rx_flow_spec {int location; } ;


 int EINVAL ;
 int MTK_MAX_LRO_IP_CNT ;
 int mtk_hwlro_get_ip_cnt (struct mtk_mac*) ;
 int mtk_hwlro_inval_ipaddr (struct mtk_eth*,int) ;
 struct mtk_mac* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mtk_hwlro_del_ipaddr(struct net_device *dev,
    struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp =
  (struct ethtool_rx_flow_spec *)&cmd->fs;
 struct mtk_mac *mac = netdev_priv(dev);
 struct mtk_eth *eth = mac->hw;
 int hwlro_idx;

 if (fsp->location > 1)
  return -EINVAL;

 mac->hwlro_ip[fsp->location] = 0;
 hwlro_idx = (mac->id * MTK_MAX_LRO_IP_CNT) + fsp->location;

 mac->hwlro_ip_cnt = mtk_hwlro_get_ip_cnt(mac);

 mtk_hwlro_inval_ipaddr(eth, hwlro_idx);

 return 0;
}
