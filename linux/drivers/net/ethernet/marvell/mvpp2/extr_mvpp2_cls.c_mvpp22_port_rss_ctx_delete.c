
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct mvpp2_port {int* rss_ctx; int dev; TYPE_1__** rfs_rules; struct mvpp2* priv; } ;
struct mvpp2 {int ** rss_tables; } ;
struct TYPE_4__ {int flow_type; int location; } ;
struct ethtool_rxnfc {size_t rss_context; TYPE_2__ fs; } ;
struct TYPE_3__ {struct ethtool_rxnfc rxnfc; } ;


 int EINVAL ;
 int FLOW_RSS ;
 int MVPP22_N_RSS_TABLES ;
 int MVPP2_N_RFS_ENTRIES_PER_FLOW ;
 int kfree (int *) ;
 int mvpp22_rss_ctx (struct mvpp2_port*,size_t) ;
 int mvpp2_ethtool_cls_rule_del (struct mvpp2_port*,struct ethtool_rxnfc*) ;
 int netdev_warn (int ,char*,int ) ;

int mvpp22_port_rss_ctx_delete(struct mvpp2_port *port, u32 port_ctx)
{
 struct mvpp2 *priv = port->priv;
 struct ethtool_rxnfc *rxnfc;
 int i, rss_ctx, ret;

 rss_ctx = mvpp22_rss_ctx(port, port_ctx);

 if (rss_ctx < 0 || rss_ctx >= MVPP22_N_RSS_TABLES)
  return -EINVAL;


 for (i = 0; i < MVPP2_N_RFS_ENTRIES_PER_FLOW; i++) {
  if (!port->rfs_rules[i])
   continue;

  rxnfc = &port->rfs_rules[i]->rxnfc;
  if (!(rxnfc->fs.flow_type & FLOW_RSS) ||
      rxnfc->rss_context != port_ctx)
   continue;

  ret = mvpp2_ethtool_cls_rule_del(port, rxnfc);
  if (ret) {
   netdev_warn(port->dev,
        "couldn't remove classification rule %d associated to this context",
        rxnfc->fs.location);
  }
 }

 kfree(priv->rss_tables[rss_ctx]);

 priv->rss_tables[rss_ctx] = ((void*)0);
 port->rss_ctx[port_ctx] = -1;

 return 0;
}
