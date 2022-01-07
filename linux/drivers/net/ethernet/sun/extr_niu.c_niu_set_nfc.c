
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct niu {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;


 int EINVAL ;



 struct niu* netdev_priv (struct net_device*) ;
 int niu_add_ethtool_tcam_entry (struct niu*,struct ethtool_rxnfc*) ;
 int niu_del_ethtool_tcam_entry (struct niu*,int ) ;
 int niu_set_hash_opts (struct niu*,struct ethtool_rxnfc*) ;

__attribute__((used)) static int niu_set_nfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
 struct niu *np = netdev_priv(dev);
 int ret = 0;

 switch (cmd->cmd) {
 case 128:
  ret = niu_set_hash_opts(np, cmd);
  break;
 case 129:
  ret = niu_add_ethtool_tcam_entry(np, cmd);
  break;
 case 130:
  ret = niu_del_ethtool_tcam_entry(np, cmd->fs.location);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
