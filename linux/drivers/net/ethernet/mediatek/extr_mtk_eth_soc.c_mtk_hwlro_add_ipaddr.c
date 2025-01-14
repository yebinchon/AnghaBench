
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mtk_mac {int id; int * hwlro_ip; int hwlro_ip_cnt; struct mtk_eth* hw; } ;
struct mtk_eth {int dummy; } ;
struct ethtool_rxnfc {int fs; } ;
struct TYPE_3__ {int ip4dst; } ;
struct TYPE_4__ {TYPE_1__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {scalar_t__ flow_type; int location; TYPE_2__ h_u; } ;


 int EINVAL ;
 int MTK_MAX_LRO_IP_CNT ;
 scalar_t__ TCP_V4_FLOW ;
 int htonl (int ) ;
 int mtk_hwlro_get_ip_cnt (struct mtk_mac*) ;
 int mtk_hwlro_val_ipaddr (struct mtk_eth*,int,int ) ;
 struct mtk_mac* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mtk_hwlro_add_ipaddr(struct net_device *dev,
    struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp =
  (struct ethtool_rx_flow_spec *)&cmd->fs;
 struct mtk_mac *mac = netdev_priv(dev);
 struct mtk_eth *eth = mac->hw;
 int hwlro_idx;

 if ((fsp->flow_type != TCP_V4_FLOW) ||
     (!fsp->h_u.tcp_ip4_spec.ip4dst) ||
     (fsp->location > 1))
  return -EINVAL;

 mac->hwlro_ip[fsp->location] = htonl(fsp->h_u.tcp_ip4_spec.ip4dst);
 hwlro_idx = (mac->id * MTK_MAX_LRO_IP_CNT) + fsp->location;

 mac->hwlro_ip_cnt = mtk_hwlro_get_ip_cnt(mac);

 mtk_hwlro_val_ipaddr(eth, hwlro_idx, mac->hwlro_ip[fsp->location]);

 return 0;
}
