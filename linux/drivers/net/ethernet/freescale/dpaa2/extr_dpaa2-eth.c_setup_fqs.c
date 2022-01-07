
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct dpaa2_eth_priv {size_t num_fqs; TYPE_1__* fq; } ;
struct TYPE_2__ {void* flowid; int consume; int type; } ;


 int DPAA2_RX_FQ ;
 int DPAA2_TX_CONF_FQ ;
 int dpaa2_eth_queue_count (struct dpaa2_eth_priv*) ;
 int dpaa2_eth_rx ;
 int dpaa2_eth_tx_conf ;
 int set_fq_affinity (struct dpaa2_eth_priv*) ;

__attribute__((used)) static void setup_fqs(struct dpaa2_eth_priv *priv)
{
 int i;





 for (i = 0; i < dpaa2_eth_queue_count(priv); i++) {
  priv->fq[priv->num_fqs].type = DPAA2_TX_CONF_FQ;
  priv->fq[priv->num_fqs].consume = dpaa2_eth_tx_conf;
  priv->fq[priv->num_fqs++].flowid = (u16)i;
 }

 for (i = 0; i < dpaa2_eth_queue_count(priv); i++) {
  priv->fq[priv->num_fqs].type = DPAA2_RX_FQ;
  priv->fq[priv->num_fqs].consume = dpaa2_eth_rx;
  priv->fq[priv->num_fqs++].flowid = (u16)i;
 }


 set_fq_affinity(priv);
}
