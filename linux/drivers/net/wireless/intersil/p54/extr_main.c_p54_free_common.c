
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54_common {int * survey; int * used_rxkeys; int * rssi_db; int * curve_data; int * output_limit; int * iq_autocal; int ** band_table; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 unsigned int NUM_NL80211_BANDS ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int kfree (int *) ;

void p54_free_common(struct ieee80211_hw *dev)
{
 struct p54_common *priv = dev->priv;
 unsigned int i;

 for (i = 0; i < NUM_NL80211_BANDS; i++)
  kfree(priv->band_table[i]);

 kfree(priv->iq_autocal);
 kfree(priv->output_limit);
 kfree(priv->curve_data);
 kfree(priv->rssi_db);
 kfree(priv->used_rxkeys);
 kfree(priv->survey);
 priv->iq_autocal = ((void*)0);
 priv->output_limit = ((void*)0);
 priv->curve_data = ((void*)0);
 priv->rssi_db = ((void*)0);
 priv->used_rxkeys = ((void*)0);
 priv->survey = ((void*)0);
 ieee80211_free_hw(dev);
}
