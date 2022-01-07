
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * by_id; int * by_hash; int lock; } ;
struct ionic_lif {TYPE_1__ rx_filters; } ;


 int INIT_HLIST_HEAD (int *) ;
 unsigned int IONIC_RX_FILTER_HLISTS ;
 int spin_lock_init (int *) ;

int ionic_rx_filters_init(struct ionic_lif *lif)
{
 unsigned int i;

 spin_lock_init(&lif->rx_filters.lock);

 for (i = 0; i < IONIC_RX_FILTER_HLISTS; i++) {
  INIT_HLIST_HEAD(&lif->rx_filters.by_hash[i]);
  INIT_HLIST_HEAD(&lif->rx_filters.by_id[i]);
 }

 return 0;
}
