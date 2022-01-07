
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int data; int rule_cnt; } ;
struct bnxt {int ntp_fltr_count; int rx_nr_rings; } ;


 int BNXT_NTP_FLTR_MAX_FLTR ;
 int EOPNOTSUPP ;





 int bnxt_grxclsrlall (struct bnxt*,struct ethtool_rxnfc*,int *) ;
 int bnxt_grxclsrule (struct bnxt*,struct ethtool_rxnfc*) ;
 int bnxt_grxfh (struct bnxt*,struct ethtool_rxnfc*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
     u32 *rule_locs)
{
 struct bnxt *bp = netdev_priv(dev);
 int rc = 0;

 switch (cmd->cmd) {
 case 129:
  rc = bnxt_grxfh(bp, cmd);
  break;

 default:
  rc = -EOPNOTSUPP;
  break;
 }

 return rc;
}
