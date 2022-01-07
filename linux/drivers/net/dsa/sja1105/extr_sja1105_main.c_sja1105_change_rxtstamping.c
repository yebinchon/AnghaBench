
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sja1105_table {struct sja1105_general_params_entry* entries; } ;
struct TYPE_3__ {int * stampable_skb; } ;
struct TYPE_4__ {struct sja1105_table* tables; } ;
struct sja1105_private {TYPE_1__ tagger_data; TYPE_2__ static_config; } ;
struct sja1105_general_params_entry {int send_meta1; int send_meta0; } ;


 size_t BLK_IDX_GENERAL_PARAMS ;
 int kfree_skb (int *) ;
 int sja1105_init_avb_params (struct sja1105_private*,int) ;
 int sja1105_static_config_reload (struct sja1105_private*) ;

__attribute__((used)) static int sja1105_change_rxtstamping(struct sja1105_private *priv,
          bool on)
{
 struct sja1105_general_params_entry *general_params;
 struct sja1105_table *table;
 int rc;

 table = &priv->static_config.tables[BLK_IDX_GENERAL_PARAMS];
 general_params = table->entries;
 general_params->send_meta1 = on;
 general_params->send_meta0 = on;

 rc = sja1105_init_avb_params(priv, on);
 if (rc < 0)
  return rc;


 if (priv->tagger_data.stampable_skb) {
  kfree_skb(priv->tagger_data.stampable_skb);
  priv->tagger_data.stampable_skb = ((void*)0);
 }

 return sja1105_static_config_reload(priv);
}
