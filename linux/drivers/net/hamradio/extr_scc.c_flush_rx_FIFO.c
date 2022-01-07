
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rxerrs; } ;
struct scc_channel {int * rx_buff; TYPE_1__ stat; int data; } ;


 int Inb (int ) ;
 int dev_kfree_skb_irq (int *) ;

__attribute__((used)) static inline void flush_rx_FIFO(struct scc_channel *scc)
{
 int k;

 for (k=0; k<3; k++)
  Inb(scc->data);

 if(scc->rx_buff != ((void*)0))
 {
  scc->stat.rxerrs++;
  dev_kfree_skb_irq(scc->rx_buff);
  scc->rx_buff = ((void*)0);
 }
}
