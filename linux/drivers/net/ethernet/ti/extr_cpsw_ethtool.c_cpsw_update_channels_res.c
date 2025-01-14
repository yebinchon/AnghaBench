
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {scalar_t__ tx_maxrate; } ;
struct cpsw_vector {int ch; } ;
struct cpsw_priv {int ndev; struct cpsw_common* cpsw; } ;
struct cpsw_common {int rx_ch_num; int tx_ch_num; int dma; struct cpsw_vector* txv; struct cpsw_vector* rxv; } ;
typedef void (* cpdma_handler_fn ) (void*,int,int) ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cpdma_chan_create (int ,int,void (*) (void*,int,int),int) ;
 int cpdma_chan_destroy (int ) ;
 int cpsw_info (struct cpsw_priv*,int ,char*,int,char*) ;
 void cpsw_tx_handler (void*,int,int) ;
 int ifup ;
 struct netdev_queue* netdev_get_tx_queue (int ,int) ;

__attribute__((used)) static int cpsw_update_channels_res(struct cpsw_priv *priv, int ch_num, int rx,
        cpdma_handler_fn rx_handler)
{
 struct cpsw_common *cpsw = priv->cpsw;
 void (*handler)(void *, int, int);
 struct netdev_queue *queue;
 struct cpsw_vector *vec;
 int ret, *ch, vch;

 if (rx) {
  ch = &cpsw->rx_ch_num;
  vec = cpsw->rxv;
  handler = rx_handler;
 } else {
  ch = &cpsw->tx_ch_num;
  vec = cpsw->txv;
  handler = cpsw_tx_handler;
 }

 while (*ch < ch_num) {
  vch = rx ? *ch : 7 - *ch;
  vec[*ch].ch = cpdma_chan_create(cpsw->dma, vch, handler, rx);
  queue = netdev_get_tx_queue(priv->ndev, *ch);
  queue->tx_maxrate = 0;

  if (IS_ERR(vec[*ch].ch))
   return PTR_ERR(vec[*ch].ch);

  if (!vec[*ch].ch)
   return -EINVAL;

  cpsw_info(priv, ifup, "created new %d %s channel\n", *ch,
     (rx ? "rx" : "tx"));
  (*ch)++;
 }

 while (*ch > ch_num) {
  (*ch)--;

  ret = cpdma_chan_destroy(vec[*ch].ch);
  if (ret)
   return ret;

  cpsw_info(priv, ifup, "destroyed %d %s channel\n", *ch,
     (rx ? "rx" : "tx"));
 }

 return 0;
}
