
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct stmmac_tx_queue {int txtimer; } ;
struct stmmac_priv {int tx_coal_timer; struct stmmac_tx_queue* tx_queue; } ;


 int STMMAC_COAL_TIMER (int ) ;
 int mod_timer (int *,int ) ;

__attribute__((used)) static void stmmac_tx_timer_arm(struct stmmac_priv *priv, u32 queue)
{
 struct stmmac_tx_queue *tx_q = &priv->tx_queue[queue];

 mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(priv->tx_coal_timer));
}
