
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {int num_tx_queues; TYPE_1__** tx_queue; int ndev; } ;
struct gfar_priv_tx_q {int dummy; } ;
struct TYPE_2__ {int qindex; int txlock; int dev; int * tx_skbuff; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int gfar_alloc_tx_queues(struct gfar_private *priv)
{
 int i;

 for (i = 0; i < priv->num_tx_queues; i++) {
  priv->tx_queue[i] = kzalloc(sizeof(struct gfar_priv_tx_q),
         GFP_KERNEL);
  if (!priv->tx_queue[i])
   return -ENOMEM;

  priv->tx_queue[i]->tx_skbuff = ((void*)0);
  priv->tx_queue[i]->qindex = i;
  priv->tx_queue[i]->dev = priv->ndev;
  spin_lock_init(&(priv->tx_queue[i]->txlock));
 }
 return 0;
}
