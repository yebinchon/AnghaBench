
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct stmmac_tx_queue {int txtimer; } ;
struct stmmac_priv {struct stmmac_tx_queue* tx_queue; int rx_coal_frames; int tx_coal_timer; int tx_coal_frames; TYPE_1__* plat; } ;
struct TYPE_2__ {size_t tx_queues_to_use; } ;


 int STMMAC_COAL_TX_TIMER ;
 int STMMAC_RX_FRAMES ;
 int STMMAC_TX_FRAMES ;
 int stmmac_tx_timer ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void stmmac_init_coalesce(struct stmmac_priv *priv)
{
 u32 tx_channel_count = priv->plat->tx_queues_to_use;
 u32 chan;

 priv->tx_coal_frames = STMMAC_TX_FRAMES;
 priv->tx_coal_timer = STMMAC_COAL_TX_TIMER;
 priv->rx_coal_frames = STMMAC_RX_FRAMES;

 for (chan = 0; chan < tx_channel_count; chan++) {
  struct stmmac_tx_queue *tx_q = &priv->tx_queue[chan];

  timer_setup(&tx_q->txtimer, stmmac_tx_timer, 0);
 }
}
