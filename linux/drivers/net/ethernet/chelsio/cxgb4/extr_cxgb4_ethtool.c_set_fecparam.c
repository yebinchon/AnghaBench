
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_config {int requested_fec; } ;
struct port_info {int tx_chan; TYPE_1__* adapter; struct link_config link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_fecparam {int fec; } ;
struct TYPE_2__ {int mbox; } ;


 int eth_to_cc_fec (int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_link_l1cfg (TYPE_1__*,int ,int ,struct link_config*) ;

__attribute__((used)) static int set_fecparam(struct net_device *dev, struct ethtool_fecparam *fec)
{
 struct port_info *pi = netdev_priv(dev);
 struct link_config *lc = &pi->link_cfg;
 struct link_config old_lc;
 int ret;




 old_lc = *lc;




 lc->requested_fec = eth_to_cc_fec(fec->fec);
 ret = t4_link_l1cfg(pi->adapter, pi->adapter->mbox,
       pi->tx_chan, lc);
 if (ret)
  *lc = old_lc;
 return ret;
}
