
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct dpni_queue_id {int fqid; int qdbin; } ;
struct TYPE_8__ {scalar_t__ priority; int type; int id; } ;
struct dpni_queue {scalar_t__ user_context; TYPE_4__ destination; } ;
struct dpaa2_eth_priv {int mc_token; int mc_io; TYPE_2__* net_dev; } ;
struct dpaa2_eth_fq {int flowid; TYPE_3__* channel; int fqid; int tx_qdbin; int * tx_fqid; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int dpcon_id; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int DPNI_DEST_DPCON ;
 int DPNI_QUEUE_OPT_DEST ;
 int DPNI_QUEUE_OPT_USER_CTX ;
 int DPNI_QUEUE_TX ;
 int DPNI_QUEUE_TX_CONFIRM ;
 int dev_err (struct device*,char*) ;
 int dpaa2_eth_tc_count (struct dpaa2_eth_priv*) ;
 int dpni_get_queue (int ,int ,int ,int ,int,int ,struct dpni_queue*,struct dpni_queue_id*) ;
 int dpni_set_queue (int ,int ,int ,int ,int ,int ,int,struct dpni_queue*) ;

__attribute__((used)) static int setup_tx_flow(struct dpaa2_eth_priv *priv,
    struct dpaa2_eth_fq *fq)
{
 struct device *dev = priv->net_dev->dev.parent;
 struct dpni_queue queue;
 struct dpni_queue_id qid;
 int i, err;

 for (i = 0; i < dpaa2_eth_tc_count(priv); i++) {
  err = dpni_get_queue(priv->mc_io, 0, priv->mc_token,
         DPNI_QUEUE_TX, i, fq->flowid,
         &queue, &qid);
  if (err) {
   dev_err(dev, "dpni_get_queue(TX) failed\n");
   return err;
  }
  fq->tx_fqid[i] = qid.fqid;
 }


 fq->tx_qdbin = qid.qdbin;

 err = dpni_get_queue(priv->mc_io, 0, priv->mc_token,
        DPNI_QUEUE_TX_CONFIRM, 0, fq->flowid,
        &queue, &qid);
 if (err) {
  dev_err(dev, "dpni_get_queue(TX_CONF) failed\n");
  return err;
 }

 fq->fqid = qid.fqid;

 queue.destination.id = fq->channel->dpcon_id;
 queue.destination.type = DPNI_DEST_DPCON;
 queue.destination.priority = 0;
 queue.user_context = (u64)(uintptr_t)fq;
 err = dpni_set_queue(priv->mc_io, 0, priv->mc_token,
        DPNI_QUEUE_TX_CONFIRM, 0, fq->flowid,
        DPNI_QUEUE_OPT_USER_CTX | DPNI_QUEUE_OPT_DEST,
        &queue);
 if (err) {
  dev_err(dev, "dpni_set_queue(TX_CONF) failed\n");
  return err;
 }

 return 0;
}
