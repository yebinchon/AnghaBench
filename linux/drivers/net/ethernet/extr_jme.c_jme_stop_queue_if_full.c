
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_ring {int nr_free; int next_to_clean; struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {scalar_t__ start_xmit; scalar_t__ skb; } ;
struct jme_adapter {int tx_wake_threshold; int dev; struct jme_ring* txring; } ;


 int MAX_SKB_FRAGS ;
 scalar_t__ TX_TIMEOUT ;
 int atomic_read (int *) ;
 scalar_t__ jiffies ;
 int netif_info (struct jme_adapter*,int ,int ,char*,...) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int smp_wmb () ;
 int tx_queued ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
jme_stop_queue_if_full(struct jme_adapter *jme)
{
 struct jme_ring *txring = &(jme->txring[0]);
 struct jme_buffer_info *txbi = txring->bufinf;
 int idx = atomic_read(&txring->next_to_clean);

 txbi += idx;

 smp_wmb();
 if (unlikely(atomic_read(&txring->nr_free) < (MAX_SKB_FRAGS+2))) {
  netif_stop_queue(jme->dev);
  netif_info(jme, tx_queued, jme->dev, "TX Queue Paused\n");
  smp_wmb();
  if (atomic_read(&txring->nr_free)
   >= (jme->tx_wake_threshold)) {
   netif_wake_queue(jme->dev);
   netif_info(jme, tx_queued, jme->dev, "TX Queue Fast Waked\n");
  }
 }

 if (unlikely(txbi->start_xmit &&
   (jiffies - txbi->start_xmit) >= TX_TIMEOUT &&
   txbi->skb)) {
  netif_stop_queue(jme->dev);
  netif_info(jme, tx_queued, jme->dev,
      "TX Queue Stopped %d@%lu\n", idx, jiffies);
 }
}
