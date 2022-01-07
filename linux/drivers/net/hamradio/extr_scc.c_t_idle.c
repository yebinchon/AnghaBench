
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_4__ {int tx_state; } ;
struct TYPE_3__ {int mintime; } ;
struct scc_channel {TYPE_2__ stat; TYPE_1__ kiss; int tx_wdog; } ;


 int TXS_WAIT ;
 int TX_OFF ;
 int del_timer (int *) ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 struct scc_channel* scc ;
 int scc_key_trx (struct scc_channel*,int ) ;
 int scc_start_tx_timer (struct scc_channel*,int ,int) ;
 int t_dwait ;
 int tx_t ;

__attribute__((used)) static void t_idle(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_t);

 del_timer(&scc->tx_wdog);

 scc_key_trx(scc, TX_OFF);
 if(scc->kiss.mintime)
  scc_start_tx_timer(scc, t_dwait, scc->kiss.mintime*100);
 scc->stat.tx_state = TXS_WAIT;
}
