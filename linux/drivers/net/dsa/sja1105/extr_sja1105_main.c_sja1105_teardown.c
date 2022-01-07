
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skb_rxtstamp_queue; int rxtstamp_work; } ;
struct sja1105_private {int static_config; TYPE_1__ tagger_data; } ;
struct dsa_switch {struct sja1105_private* priv; } ;


 int cancel_work_sync (int *) ;
 int sja1105_ptp_clock_unregister (struct sja1105_private*) ;
 int sja1105_static_config_free (int *) ;
 int sja1105_tas_teardown (struct dsa_switch*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void sja1105_teardown(struct dsa_switch *ds)
{
 struct sja1105_private *priv = ds->priv;

 sja1105_tas_teardown(ds);
 cancel_work_sync(&priv->tagger_data.rxtstamp_work);
 skb_queue_purge(&priv->tagger_data.skb_rxtstamp_queue);
 sja1105_ptp_clock_unregister(priv);
 sja1105_static_config_free(&priv->static_config);
}
