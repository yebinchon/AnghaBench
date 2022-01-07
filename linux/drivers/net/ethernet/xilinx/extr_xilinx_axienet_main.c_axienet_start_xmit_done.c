
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_2__ stats; TYPE_1__ dev; } ;
struct axienet_local {size_t tx_bd_ci; size_t tx_bd_num; struct axidma_bd* tx_bd_v; } ;
struct axidma_bd {unsigned int status; int cntrl; int * skb; scalar_t__ app4; scalar_t__ app2; scalar_t__ app1; scalar_t__ app0; int phys; } ;


 int DMA_TO_DEVICE ;
 int XAXIDMA_BD_CTRL_LENGTH_MASK ;
 unsigned int XAXIDMA_BD_STS_ACTUAL_LEN_MASK ;
 unsigned int XAXIDMA_BD_STS_COMPLETE_MASK ;
 int dev_consume_skb_irq (int *) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int smp_mb () ;

__attribute__((used)) static void axienet_start_xmit_done(struct net_device *ndev)
{
 u32 size = 0;
 u32 packets = 0;
 struct axienet_local *lp = netdev_priv(ndev);
 struct axidma_bd *cur_p;
 unsigned int status = 0;

 cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
 status = cur_p->status;
 while (status & XAXIDMA_BD_STS_COMPLETE_MASK) {
  dma_unmap_single(ndev->dev.parent, cur_p->phys,
    (cur_p->cntrl & XAXIDMA_BD_CTRL_LENGTH_MASK),
    DMA_TO_DEVICE);
  if (cur_p->skb)
   dev_consume_skb_irq(cur_p->skb);

  cur_p->app0 = 0;
  cur_p->app1 = 0;
  cur_p->app2 = 0;
  cur_p->app4 = 0;
  cur_p->status = 0;
  cur_p->skb = ((void*)0);

  size += status & XAXIDMA_BD_STS_ACTUAL_LEN_MASK;
  packets++;

  if (++lp->tx_bd_ci >= lp->tx_bd_num)
   lp->tx_bd_ci = 0;
  cur_p = &lp->tx_bd_v[lp->tx_bd_ci];
  status = cur_p->status;
 }

 ndev->stats.tx_packets += packets;
 ndev->stats.tx_bytes += size;


 smp_mb();

 netif_wake_queue(ndev);
}
