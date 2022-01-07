
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpni_taildrop {int enable; int threshold; int member_0; } ;
struct dpaa2_eth_priv {int rx_td_enabled; int num_fqs; int net_dev; TYPE_1__* fq; int mc_token; int mc_io; } ;
struct TYPE_2__ {scalar_t__ type; int flowid; } ;


 int DPAA2_ETH_TAILDROP_THRESH ;
 scalar_t__ DPAA2_RX_FQ ;
 int DPNI_CP_QUEUE ;
 int DPNI_QUEUE_RX ;
 int dpni_set_taildrop (int ,int ,int ,int ,int ,int ,int ,struct dpni_taildrop*) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void dpaa2_eth_set_rx_taildrop(struct dpaa2_eth_priv *priv, bool enable)
{
 struct dpni_taildrop td = {0};
 int i, err;

 if (priv->rx_td_enabled == enable)
  return;

 td.enable = enable;
 td.threshold = DPAA2_ETH_TAILDROP_THRESH;

 for (i = 0; i < priv->num_fqs; i++) {
  if (priv->fq[i].type != DPAA2_RX_FQ)
   continue;
  err = dpni_set_taildrop(priv->mc_io, 0, priv->mc_token,
     DPNI_CP_QUEUE, DPNI_QUEUE_RX, 0,
     priv->fq[i].flowid, &td);
  if (err) {
   netdev_err(priv->net_dev,
       "dpni_set_taildrop() failed\n");
   break;
  }
 }

 priv->rx_td_enabled = enable;
}
