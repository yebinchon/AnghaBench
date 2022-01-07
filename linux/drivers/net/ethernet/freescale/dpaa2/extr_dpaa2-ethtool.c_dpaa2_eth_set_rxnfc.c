
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int location; } ;
struct ethtool_rxnfc {int cmd; int data; TYPE_1__ fs; } ;


 int DPAA2_RXH_SUPPORTED ;
 int EOPNOTSUPP ;



 int dpaa2_eth_set_hash (struct net_device*,int) ;
 int update_cls_rule (struct net_device*,TYPE_1__*,int ) ;

__attribute__((used)) static int dpaa2_eth_set_rxnfc(struct net_device *net_dev,
          struct ethtool_rxnfc *rxnfc)
{
 int err = 0;

 switch (rxnfc->cmd) {
 case 128:
  if ((rxnfc->data & DPAA2_RXH_SUPPORTED) != rxnfc->data)
   return -EOPNOTSUPP;
  err = dpaa2_eth_set_hash(net_dev, rxnfc->data);
  break;
 case 129:
  err = update_cls_rule(net_dev, &rxnfc->fs, rxnfc->fs.location);
  break;
 case 130:
  err = update_cls_rule(net_dev, ((void*)0), rxnfc->fs.location);
  break;
 default:
  err = -EOPNOTSUPP;
 }

 return err;
}
