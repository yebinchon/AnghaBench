
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int dummy; } ;
struct ethtool_rxnfc {int flow_type; int data; } ;


 int EINVAL ;
 int gfar_ethflow_to_filer_table (struct gfar_private*,int ,int ) ;

__attribute__((used)) static int gfar_set_hash_opts(struct gfar_private *priv,
         struct ethtool_rxnfc *cmd)
{

 if (!gfar_ethflow_to_filer_table(priv, cmd->data, cmd->flow_type))
  return -EINVAL;

 return 0;
}
