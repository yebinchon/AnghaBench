
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int viid; int adapter; } ;
struct net_device {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int __dev_mc_sync (struct net_device*,int ,int ) ;
 int __dev_uc_sync (struct net_device*,int ,int ) ;
 int cxgb4vf_mac_sync ;
 int cxgb4vf_mac_unsync ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4vf_set_rxmode (int ,int ,int,int,int,int,int,int) ;

__attribute__((used)) static int set_rxmode(struct net_device *dev, int mtu, bool sleep_ok)
{
 struct port_info *pi = netdev_priv(dev);

 __dev_uc_sync(dev, cxgb4vf_mac_sync, cxgb4vf_mac_unsync);
 __dev_mc_sync(dev, cxgb4vf_mac_sync, cxgb4vf_mac_unsync);
 return t4vf_set_rxmode(pi->adapter, pi->viid, -1,
          (dev->flags & IFF_PROMISC) != 0,
          (dev->flags & IFF_ALLMULTI) != 0,
          1, -1, sleep_ok);
}
