
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvpp2_port {struct mvpp2_ethtool_fs** rfs_rules; int n_rfs_rules; } ;
struct mvpp2_ethtool_fs {int rule; } ;
struct TYPE_2__ {size_t location; } ;
struct ethtool_rxnfc {TYPE_1__ fs; } ;


 int EINVAL ;
 int kfree (struct mvpp2_ethtool_fs*) ;
 int mvpp2_port_cls_rfs_rule_remove (struct mvpp2_port*,int *) ;

int mvpp2_ethtool_cls_rule_del(struct mvpp2_port *port,
          struct ethtool_rxnfc *info)
{
 struct mvpp2_ethtool_fs *efs;
 int ret;

 efs = port->rfs_rules[info->fs.location];
 if (!efs)
  return -EINVAL;


 ret = mvpp2_port_cls_rfs_rule_remove(port, &efs->rule);
 if (ret)
  return ret;

 port->n_rfs_rules--;
 port->rfs_rules[info->fs.location] = ((void*)0);
 kfree(efs);

 return 0;
}
