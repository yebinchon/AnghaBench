
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_femac_priv {scalar_t__ tx_fifo_used_cnt; int rxq; int dev; int txq; } ;


 int RXQ_NUM ;
 int TXQ_NUM ;
 int hisi_femac_init_queue (int ,int *,int ) ;

__attribute__((used)) static int hisi_femac_init_tx_and_rx_queues(struct hisi_femac_priv *priv)
{
 int ret;

 ret = hisi_femac_init_queue(priv->dev, &priv->txq, TXQ_NUM);
 if (ret)
  return ret;

 ret = hisi_femac_init_queue(priv->dev, &priv->rxq, RXQ_NUM);
 if (ret)
  return ret;

 priv->tx_fifo_used_cnt = 0;

 return 0;
}
