
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct typhoon {int dev; } ;
struct transmit_ring {int lastRead; int lastWrite; } ;
typedef int __le32 ;


 int MAX_SKB_FRAGS ;
 int TXLO_ENTRIES ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int smp_wmb () ;
 int typhoon_clean_tx (struct typhoon*,struct transmit_ring*,int volatile*) ;
 int typhoon_num_free (int ,int ,int ) ;

__attribute__((used)) static void
typhoon_tx_complete(struct typhoon *tp, struct transmit_ring *txRing,
   volatile __le32 * index)
{
 u32 lastRead;
 int numDesc = MAX_SKB_FRAGS + 1;


 lastRead = typhoon_clean_tx(tp, txRing, index);
 if(netif_queue_stopped(tp->dev) && typhoon_num_free(txRing->lastWrite,
    lastRead, TXLO_ENTRIES) > (numDesc + 2))
  netif_wake_queue(tp->dev);

 txRing->lastRead = lastRead;
 smp_wmb();
}
