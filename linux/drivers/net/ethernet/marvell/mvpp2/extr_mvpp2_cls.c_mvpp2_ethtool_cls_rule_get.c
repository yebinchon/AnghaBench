
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {struct mvpp2_ethtool_fs** rfs_rules; } ;
struct mvpp2_ethtool_fs {int rxnfc; } ;
struct TYPE_2__ {size_t location; } ;
struct ethtool_rxnfc {TYPE_1__ fs; } ;


 int EINVAL ;
 int ENOENT ;
 size_t MVPP2_N_RFS_ENTRIES_PER_FLOW ;
 int memcpy (struct ethtool_rxnfc*,int *,int) ;

int mvpp2_ethtool_cls_rule_get(struct mvpp2_port *port,
          struct ethtool_rxnfc *rxnfc)
{
 struct mvpp2_ethtool_fs *efs;

 if (rxnfc->fs.location >= MVPP2_N_RFS_ENTRIES_PER_FLOW)
  return -EINVAL;

 efs = port->rfs_rules[rxnfc->fs.location];
 if (!efs)
  return -ENOENT;

 memcpy(rxnfc, &efs->rxnfc, sizeof(efs->rxnfc));

 return 0;
}
