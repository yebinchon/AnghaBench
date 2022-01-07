
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_info {int viid; TYPE_1__* adapter; } ;
struct net_device {int mtu; } ;
struct TYPE_2__ {int pf; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int t4_set_rxmode (TYPE_1__*,int ,int ,int,int,int,int,int,int) ;

__attribute__((used)) static int cxgb_change_mtu(struct net_device *dev, int new_mtu)
{
 int ret;
 struct port_info *pi = netdev_priv(dev);

 ret = t4_set_rxmode(pi->adapter, pi->adapter->pf, pi->viid, new_mtu, -1,
       -1, -1, -1, 1);
 if (!ret)
  dev->mtu = new_mtu;
 return ret;
}
