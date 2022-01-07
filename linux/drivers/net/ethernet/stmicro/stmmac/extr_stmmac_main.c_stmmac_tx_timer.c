
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct stmmac_tx_queue {size_t queue_index; int txtimer; struct stmmac_priv* priv_data; } ;
struct stmmac_priv {struct stmmac_channel* channel; } ;
struct stmmac_channel {int tx_napi; } ;


 int STMMAC_COAL_TIMER (int) ;
 int __napi_schedule (int *) ;
 struct stmmac_tx_queue* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ likely (int ) ;
 int mod_timer (int *,int ) ;
 int napi_schedule_prep (int *) ;
 struct stmmac_tx_queue* tx_q ;
 int txtimer ;

__attribute__((used)) static void stmmac_tx_timer(struct timer_list *t)
{
 struct stmmac_tx_queue *tx_q = from_timer(tx_q, t, txtimer);
 struct stmmac_priv *priv = tx_q->priv_data;
 struct stmmac_channel *ch;

 ch = &priv->channel[tx_q->queue_index];





 if (likely(napi_schedule_prep(&ch->tx_napi)))
  __napi_schedule(&ch->tx_napi);
 else
  mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));
}
