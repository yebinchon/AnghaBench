
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct scc_channel {int irq; int * tx_buff; } ;


 int disable_irq (int ) ;
 int enable_irq (int ) ;
 struct scc_channel* from_timer (int ,struct timer_list*,int ) ;
 struct scc_channel* scc ;
 int scc_start_maxkeyup (struct scc_channel*) ;
 int scc_txint (struct scc_channel*) ;
 int tx_t ;

__attribute__((used)) static void t_txdelay(struct timer_list *t)
{
 struct scc_channel *scc = from_timer(scc, t, tx_t);

 scc_start_maxkeyup(scc);

 if (scc->tx_buff == ((void*)0))
 {
  disable_irq(scc->irq);
  scc_txint(scc);
  enable_irq(scc->irq);
 }
}
