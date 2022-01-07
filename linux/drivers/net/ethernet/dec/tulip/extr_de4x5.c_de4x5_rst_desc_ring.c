
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct TYPE_6__ {scalar_t__ save_cnt; } ;
struct de4x5_private {int rxRingSize; int txRingSize; TYPE_3__ cache; TYPE_2__* tx_ring; TYPE_1__* rx_ring; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; scalar_t__ dma_rings; } ;
struct de4x5_desc {int dummy; } ;
typedef int s32 ;
struct TYPE_5__ {void* status; } ;
struct TYPE_4__ {void* status; } ;


 int DE4X5_RRBA ;
 int DE4X5_TRBA ;
 int NUM_RX_DESC ;
 int R_OWN ;
 int START_DE4X5 ;
 int STOP_DE4X5 ;
 int barrier () ;
 void* cpu_to_le32 (int ) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;
 int outl (scalar_t__,int ) ;

__attribute__((used)) static void
de4x5_rst_desc_ring(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    int i;
    s32 omr;

    if (lp->cache.save_cnt) {
 STOP_DE4X5;
 outl(lp->dma_rings, DE4X5_RRBA);
 outl(lp->dma_rings + NUM_RX_DESC * sizeof(struct de4x5_desc),
      DE4X5_TRBA);

 lp->rx_new = lp->rx_old = 0;
 lp->tx_new = lp->tx_old = 0;

 for (i = 0; i < lp->rxRingSize; i++) {
     lp->rx_ring[i].status = cpu_to_le32(R_OWN);
 }

 for (i = 0; i < lp->txRingSize; i++) {
     lp->tx_ring[i].status = cpu_to_le32(0);
 }

 barrier();
 lp->cache.save_cnt--;
 START_DE4X5;
    }
}
