
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; int wolopts; int supported; } ;
struct be_adapter {int wol_cap; scalar_t__ wol_en; } ;


 int BE_WOL_CAP ;
 int WAKE_MAGIC ;
 int memset (int *,int ,int) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void be_get_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 if (adapter->wol_cap & BE_WOL_CAP) {
  wol->supported |= WAKE_MAGIC;
  if (adapter->wol_en)
   wol->wolopts |= WAKE_MAGIC;
 } else {
  wol->wolopts = 0;
 }
 memset(&wol->sopass, 0, sizeof(wol->sopass));
}
