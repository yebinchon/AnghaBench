
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ipw_priv {struct clx2_tx_queue* txq; } ;
struct TYPE_2__ {scalar_t__ high_mark; } ;
struct clx2_tx_queue {TYPE_1__ q; } ;


 int ipw_get_tx_queue_number (struct ipw_priv*,int) ;
 scalar_t__ ipw_tx_queue_space (TYPE_1__*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw_net_is_queue_full(struct net_device *dev, int pri)
{
 struct ipw_priv *priv = libipw_priv(dev);




 struct clx2_tx_queue *txq = &priv->txq[0];


 if (ipw_tx_queue_space(&txq->q) < txq->q.high_mark)
  return 1;

 return 0;
}
