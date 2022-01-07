
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int tx_state; int txerrs; } ;
struct scc_channel {int dev; TYPE_1__ stat; int tx_t; } ;


 int TXS_IDLE ;
 int del_timer (int *) ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 struct scc_channel* scc ;
 int scc_discard_buffers (struct scc_channel*) ;
 int tx_wdog ;

__attribute__((used)) static void t_busy(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_wdog);

 del_timer(&scc->tx_t);
 netif_stop_queue(scc->dev);

 scc_discard_buffers(scc);
 scc->stat.txerrs++;
 scc->stat.tx_state = TXS_IDLE;

 netif_wake_queue(scc->dev);
}
