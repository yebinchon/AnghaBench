
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgbe_prv_data {char* ecc_name; unsigned int channel_count; char* dma_irq_name; int queue_index; int dev_irq; int dev; int ecc_irq; TYPE_1__* vdata; int dma_irq; struct xgbe_prv_data** channel; int affinity_mask; int per_channel_irq; int tasklet_ecc; int tasklet_dev; struct net_device* netdev; } ;
struct xgbe_channel {char* ecc_name; unsigned int channel_count; char* dma_irq_name; int queue_index; int dev_irq; int dev; int ecc_irq; TYPE_1__* vdata; int dma_irq; struct xgbe_channel** channel; int affinity_mask; int per_channel_irq; int tasklet_ecc; int tasklet_dev; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ecc_support; } ;


 int devm_free_irq (int ,int ,struct xgbe_prv_data*) ;
 int devm_request_irq (int ,int ,int ,int ,char*,struct xgbe_prv_data*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int netdev_alert (struct net_device*,char*,int ) ;
 char* netdev_name (struct net_device*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int xgbe_dma_isr ;
 int xgbe_ecc_isr ;
 int xgbe_ecc_isr_task ;
 int xgbe_isr ;
 int xgbe_isr_task ;

__attribute__((used)) static int xgbe_request_irqs(struct xgbe_prv_data *pdata)
{
 struct xgbe_channel *channel;
 struct net_device *netdev = pdata->netdev;
 unsigned int i;
 int ret;

 tasklet_init(&pdata->tasklet_dev, xgbe_isr_task, (unsigned long)pdata);
 tasklet_init(&pdata->tasklet_ecc, xgbe_ecc_isr_task,
       (unsigned long)pdata);

 ret = devm_request_irq(pdata->dev, pdata->dev_irq, xgbe_isr, 0,
          netdev_name(netdev), pdata);
 if (ret) {
  netdev_alert(netdev, "error requesting irq %d\n",
        pdata->dev_irq);
  return ret;
 }

 if (pdata->vdata->ecc_support && (pdata->dev_irq != pdata->ecc_irq)) {
  ret = devm_request_irq(pdata->dev, pdata->ecc_irq, xgbe_ecc_isr,
           0, pdata->ecc_name, pdata);
  if (ret) {
   netdev_alert(netdev, "error requesting ecc irq %d\n",
         pdata->ecc_irq);
   goto err_dev_irq;
  }
 }

 if (!pdata->per_channel_irq)
  return 0;

 for (i = 0; i < pdata->channel_count; i++) {
  channel = pdata->channel[i];
  snprintf(channel->dma_irq_name,
    sizeof(channel->dma_irq_name) - 1,
    "%s-TxRx-%u", netdev_name(netdev),
    channel->queue_index);

  ret = devm_request_irq(pdata->dev, channel->dma_irq,
           xgbe_dma_isr, 0,
           channel->dma_irq_name, channel);
  if (ret) {
   netdev_alert(netdev, "error requesting irq %d\n",
         channel->dma_irq);
   goto err_dma_irq;
  }

  irq_set_affinity_hint(channel->dma_irq,
          &channel->affinity_mask);
 }

 return 0;

err_dma_irq:

 for (i--; i < pdata->channel_count; i--) {
  channel = pdata->channel[i];

  irq_set_affinity_hint(channel->dma_irq, ((void*)0));
  devm_free_irq(pdata->dev, channel->dma_irq, channel);
 }

 if (pdata->vdata->ecc_support && (pdata->dev_irq != pdata->ecc_irq))
  devm_free_irq(pdata->dev, pdata->ecc_irq, pdata);

err_dev_irq:
 devm_free_irq(pdata->dev, pdata->dev_irq, pdata);

 return ret;
}
