
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ksz_hw {int mib_cnt; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {struct ksz_hw hw; } ;


 int EOPNOTSUPP ;

 struct dev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netdev_get_sset_count(struct net_device *dev, int sset)
{
 struct dev_priv *priv = netdev_priv(dev);
 struct dev_info *hw_priv = priv->adapter;
 struct ksz_hw *hw = &hw_priv->hw;

 switch (sset) {
 case 128:
  return hw->mib_cnt;
 default:
  return -EOPNOTSUPP;
 }
}
