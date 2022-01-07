
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {int fec; int pcaps; } ;
struct port_info {struct link_config link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_fecparam {int active_fec; int fec; } ;


 int ETHTOOL_FEC_AUTO ;
 int ETHTOOL_FEC_OFF ;
 int cc_to_eth_fec (int ) ;
 int fwcap_to_eth_fec (int ) ;
 struct port_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cxgb4vf_get_fecparam(struct net_device *dev,
    struct ethtool_fecparam *fec)
{
 const struct port_info *pi = netdev_priv(dev);
 const struct link_config *lc = &pi->link_cfg;





 fec->fec = fwcap_to_eth_fec(lc->pcaps);
 if (fec->fec != ETHTOOL_FEC_OFF)
  fec->fec |= ETHTOOL_FEC_AUTO;




 fec->active_fec = cc_to_eth_fec(lc->fec);
 return 0;
}
