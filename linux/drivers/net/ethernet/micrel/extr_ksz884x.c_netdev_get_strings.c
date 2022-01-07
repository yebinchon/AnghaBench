
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ksz_hw {int mib_cnt; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int ethtool_stats_keys ;
 int memcpy (int *,int *,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netdev_get_strings(struct net_device *dev, u32 stringset, u8 *buf)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;

 if (ETH_SS_STATS == stringset)
  memcpy(buf, &ethtool_stats_keys,
   ETH_GSTRING_LEN * hw->mib_cnt);
}
