
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_bus_dev {int num_vfs; TYPE_1__* vfconfigs; } ;
struct netdevsim {struct nsim_bus_dev* nsim_bus_dev; } ;
struct net_device {int dummy; } ;
struct ifla_vf_info {int vf; int rss_query_en; int trusted; int spoofchk; int mac; int qos; int vlan_proto; int vlan; int max_tx_rate; int min_tx_rate; int linkstate; } ;
struct TYPE_2__ {int rss_query_enabled; int trusted; int spoofchk_enabled; int vf_mac; int qos; int vlan_proto; int vlan; int max_tx_rate; int min_tx_rate; int link_state; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;
 struct netdevsim* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
nsim_get_vf_config(struct net_device *dev, int vf, struct ifla_vf_info *ivi)
{
 struct netdevsim *ns = netdev_priv(dev);
 struct nsim_bus_dev *nsim_bus_dev = ns->nsim_bus_dev;

 if (vf >= nsim_bus_dev->num_vfs)
  return -EINVAL;

 ivi->vf = vf;
 ivi->linkstate = nsim_bus_dev->vfconfigs[vf].link_state;
 ivi->min_tx_rate = nsim_bus_dev->vfconfigs[vf].min_tx_rate;
 ivi->max_tx_rate = nsim_bus_dev->vfconfigs[vf].max_tx_rate;
 ivi->vlan = nsim_bus_dev->vfconfigs[vf].vlan;
 ivi->vlan_proto = nsim_bus_dev->vfconfigs[vf].vlan_proto;
 ivi->qos = nsim_bus_dev->vfconfigs[vf].qos;
 memcpy(&ivi->mac, nsim_bus_dev->vfconfigs[vf].vf_mac, ETH_ALEN);
 ivi->spoofchk = nsim_bus_dev->vfconfigs[vf].spoofchk_enabled;
 ivi->trusted = nsim_bus_dev->vfconfigs[vf].trusted;
 ivi->rss_query_en = nsim_bus_dev->vfconfigs[vf].rss_query_enabled;

 return 0;
}
