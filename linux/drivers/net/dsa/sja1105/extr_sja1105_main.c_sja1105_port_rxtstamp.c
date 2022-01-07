
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sja1105_tagger_data {int rxtstamp_work; int skb_rxtstamp_queue; int state; } ;
struct sja1105_private {struct sja1105_tagger_data tagger_data; } ;
struct dsa_switch {struct sja1105_private* priv; } ;


 int SJA1105_HWTS_RX_EN ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool sja1105_port_rxtstamp(struct dsa_switch *ds, int port,
      struct sk_buff *skb, unsigned int type)
{
 struct sja1105_private *priv = ds->priv;
 struct sja1105_tagger_data *data = &priv->tagger_data;

 if (!test_bit(SJA1105_HWTS_RX_EN, &data->state))
  return 0;




 skb_queue_tail(&data->skb_rxtstamp_queue, skb);
 schedule_work(&data->rxtstamp_work);
 return 1;
}
