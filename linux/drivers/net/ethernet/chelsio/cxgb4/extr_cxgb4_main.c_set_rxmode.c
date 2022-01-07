
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int viid; struct adapter* adapter; } ;
struct net_device {int flags; } ;
struct adapter {int mbox; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 int __dev_uc_sync (struct net_device*,int ,int ) ;
 int cxgb4_mac_sync ;
 int cxgb4_mac_unsync ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_set_rxmode (struct adapter*,int ,int ,int,int,int,int,int,int) ;

__attribute__((used)) static int set_rxmode(struct net_device *dev, int mtu, bool sleep_ok)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;

 __dev_uc_sync(dev, cxgb4_mac_sync, cxgb4_mac_unsync);
 __dev_mc_sync(dev, cxgb4_mac_sync, cxgb4_mac_unsync);

 return t4_set_rxmode(adapter, adapter->mbox, pi->viid, mtu,
        (dev->flags & IFF_PROMISC) ? 1 : 0,
        (dev->flags & IFF_ALLMULTI) ? 1 : 0, 1, -1,
        sleep_ok);
}
