
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int viid; int adapter; } ;
struct net_device {int mtu; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int t4vf_set_rxmode (int ,int ,int,int,int,int,int,int) ;

__attribute__((used)) static int cxgb4vf_change_mtu(struct net_device *dev, int new_mtu)
{
 int ret;
 struct port_info *pi = netdev_priv(dev);

 ret = t4vf_set_rxmode(pi->adapter, pi->viid, new_mtu,
         -1, -1, -1, -1, 1);
 if (!ret)
  dev->mtu = new_mtu;
 return ret;
}
