
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxq {scalar_t__ used_count; scalar_t__ free_count; int rx_used; int rx_free; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int lockdep_assert_held (int *) ;

void iwl_pcie_rx_init_rxb_lists(struct iwl_rxq *rxq)
{
 lockdep_assert_held(&rxq->lock);

 INIT_LIST_HEAD(&rxq->rx_free);
 INIT_LIST_HEAD(&rxq->rx_used);
 rxq->free_count = 0;
 rxq->used_count = 0;
}
