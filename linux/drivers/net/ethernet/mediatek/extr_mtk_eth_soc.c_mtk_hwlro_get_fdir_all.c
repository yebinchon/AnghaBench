
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mtk_mac {scalar_t__* hwlro_ip; } ;
struct ethtool_rxnfc {int rule_cnt; } ;


 int MTK_MAX_LRO_IP_CNT ;
 struct mtk_mac* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mtk_hwlro_get_fdir_all(struct net_device *dev,
      struct ethtool_rxnfc *cmd,
      u32 *rule_locs)
{
 struct mtk_mac *mac = netdev_priv(dev);
 int cnt = 0;
 int i;

 for (i = 0; i < MTK_MAX_LRO_IP_CNT; i++) {
  if (mac->hwlro_ip[i]) {
   rule_locs[cnt] = i;
   cnt++;
  }
 }

 cmd->rule_cnt = cnt;

 return 0;
}
