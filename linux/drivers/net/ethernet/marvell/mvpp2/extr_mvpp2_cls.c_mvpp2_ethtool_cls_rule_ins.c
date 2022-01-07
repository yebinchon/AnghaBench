
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mvpp2_port {int n_rfs_rules; struct mvpp2_ethtool_fs** rfs_rules; } ;
struct TYPE_6__ {int flow_type; scalar_t__ loc; int * flow; } ;
struct mvpp2_ethtool_fs {TYPE_2__ rule; int rxnfc; } ;
struct TYPE_5__ {scalar_t__ location; int flow_type; } ;
struct ethtool_rxnfc {TYPE_1__ fs; int rss_context; } ;
struct ethtool_rx_flow_spec_input {int rss_ctx; TYPE_1__* fs; } ;
struct ethtool_rx_flow_rule {int * rule; } ;


 int EINVAL ;
 int ENOMEM ;
 int FLOW_RSS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ethtool_rx_flow_rule*) ;
 scalar_t__ MVPP2_N_RFS_ENTRIES_PER_FLOW ;
 int PTR_ERR (struct ethtool_rx_flow_rule*) ;
 struct ethtool_rx_flow_rule* ethtool_rx_flow_rule_create (struct ethtool_rx_flow_spec_input*) ;
 int ethtool_rx_flow_rule_destroy (struct ethtool_rx_flow_rule*) ;
 int kfree (struct mvpp2_ethtool_fs*) ;
 struct mvpp2_ethtool_fs* kzalloc (int,int ) ;
 int memcpy (int *,struct ethtool_rxnfc*,int) ;
 int mvpp2_cls_ethtool_flow_to_type (int) ;
 int mvpp2_cls_rfs_parse_rule (TYPE_2__*) ;
 int mvpp2_port_cls_rfs_rule_remove (struct mvpp2_port*,TYPE_2__*) ;
 int mvpp2_port_flt_rfs_rule_insert (struct mvpp2_port*,TYPE_2__*) ;

int mvpp2_ethtool_cls_rule_ins(struct mvpp2_port *port,
          struct ethtool_rxnfc *info)
{
 struct ethtool_rx_flow_spec_input input = {};
 struct ethtool_rx_flow_rule *ethtool_rule;
 struct mvpp2_ethtool_fs *efs, *old_efs;
 int ret = 0;

 if (info->fs.location >= MVPP2_N_RFS_ENTRIES_PER_FLOW)
  return -EINVAL;

 efs = kzalloc(sizeof(*efs), GFP_KERNEL);
 if (!efs)
  return -ENOMEM;

 input.fs = &info->fs;




 if (info->fs.flow_type & FLOW_RSS)
  input.rss_ctx = info->rss_context;

 ethtool_rule = ethtool_rx_flow_rule_create(&input);
 if (IS_ERR(ethtool_rule)) {
  ret = PTR_ERR(ethtool_rule);
  goto clean_rule;
 }

 efs->rule.flow = ethtool_rule->rule;
 efs->rule.flow_type = mvpp2_cls_ethtool_flow_to_type(info->fs.flow_type);
 if (efs->rule.flow_type < 0) {
  ret = efs->rule.flow_type;
  goto clean_rule;
 }

 ret = mvpp2_cls_rfs_parse_rule(&efs->rule);
 if (ret)
  goto clean_eth_rule;

 efs->rule.loc = info->fs.location;


 if (port->rfs_rules[efs->rule.loc]) {
  old_efs = port->rfs_rules[efs->rule.loc];
  ret = mvpp2_port_cls_rfs_rule_remove(port, &old_efs->rule);
  if (ret)
   goto clean_eth_rule;
  kfree(old_efs);
  port->n_rfs_rules--;
 }

 ret = mvpp2_port_flt_rfs_rule_insert(port, &efs->rule);
 if (ret)
  goto clean_eth_rule;

 ethtool_rx_flow_rule_destroy(ethtool_rule);
 efs->rule.flow = ((void*)0);

 memcpy(&efs->rxnfc, info, sizeof(*info));
 port->rfs_rules[efs->rule.loc] = efs;
 port->n_rfs_rules++;

 return ret;

clean_eth_rule:
 ethtool_rx_flow_rule_destroy(ethtool_rule);
clean_rule:
 kfree(efs);
 return ret;
}
