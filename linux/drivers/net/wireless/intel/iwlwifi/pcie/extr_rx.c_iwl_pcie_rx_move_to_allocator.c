
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxq {int rx_used; } ;
struct iwl_rb_allocator {int lock; int rbd_empty; } ;


 int list_splice_tail_init (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iwl_pcie_rx_move_to_allocator(struct iwl_rxq *rxq,
       struct iwl_rb_allocator *rba)
{
 spin_lock(&rba->lock);
 list_splice_tail_init(&rxq->rx_used, &rba->rbd_empty);
 spin_unlock(&rba->lock);
}
