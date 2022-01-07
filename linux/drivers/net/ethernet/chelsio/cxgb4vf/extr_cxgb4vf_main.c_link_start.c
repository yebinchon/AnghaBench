
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int adapter; int xact_addr_filt; int viid; } ;
struct net_device {int dev_addr; int mtu; } ;


 int cxgb4vf_change_mac (struct port_info*,int ,int *,int ,int) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4vf_enable_pi (int ,struct port_info*,int,int) ;
 int t4vf_set_rxmode (int ,int ,int ,int,int,int,int,int) ;

__attribute__((used)) static int link_start(struct net_device *dev)
{
 int ret;
 struct port_info *pi = netdev_priv(dev);





 ret = t4vf_set_rxmode(pi->adapter, pi->viid, dev->mtu, -1, -1, -1, 1,
         1);
 if (ret == 0)
  ret = cxgb4vf_change_mac(pi, pi->viid,
      &pi->xact_addr_filt,
      dev->dev_addr, 1);






 if (ret == 0)
  ret = t4vf_enable_pi(pi->adapter, pi, 1, 1);

 return ret;
}
