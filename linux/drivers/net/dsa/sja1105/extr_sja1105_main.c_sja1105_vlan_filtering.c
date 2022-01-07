
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct sja1105_table {struct sja1105_l2_lookup_params_entry* entries; } ;
struct TYPE_2__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_1__ static_config; } ;
struct sja1105_l2_lookup_params_entry {int incl_srcpt1; int incl_srcpt0; int shared_learn; void* tpid2; void* tpid; } ;
struct sja1105_general_params_entry {int incl_srcpt1; int incl_srcpt0; int shared_learn; void* tpid2; void* tpid; } ;
struct dsa_switch {int dev; struct sja1105_private* priv; } ;


 size_t BLK_IDX_GENERAL_PARAMS ;
 size_t BLK_IDX_L2_LOOKUP_PARAMS ;
 void* ETH_P_8021AD ;
 void* ETH_P_8021Q ;
 void* ETH_P_SJA1105 ;
 int dev_err (int ,char*) ;
 int sja1105_setup_8021q_tagging (struct dsa_switch*,int) ;
 int sja1105_static_config_reload (struct sja1105_private*) ;

__attribute__((used)) static int sja1105_vlan_filtering(struct dsa_switch *ds, int port, bool enabled)
{
 struct sja1105_l2_lookup_params_entry *l2_lookup_params;
 struct sja1105_general_params_entry *general_params;
 struct sja1105_private *priv = ds->priv;
 struct sja1105_table *table;
 u16 tpid, tpid2;
 int rc;

 if (enabled) {

  tpid = ETH_P_8021AD;
  tpid2 = ETH_P_8021Q;
 } else {

  tpid = ETH_P_SJA1105;
  tpid2 = ETH_P_SJA1105;
 }

 table = &priv->static_config.tables[BLK_IDX_GENERAL_PARAMS];
 general_params = table->entries;

 general_params->tpid = tpid;

 general_params->tpid2 = tpid2;



 general_params->incl_srcpt1 = enabled;
 general_params->incl_srcpt0 = enabled;
 table = &priv->static_config.tables[BLK_IDX_L2_LOOKUP_PARAMS];
 l2_lookup_params = table->entries;
 l2_lookup_params->shared_learn = !enabled;

 rc = sja1105_static_config_reload(priv);
 if (rc)
  dev_err(ds->dev, "Failed to change VLAN Ethertype\n");





 return sja1105_setup_8021q_tagging(ds, !enabled);
}
