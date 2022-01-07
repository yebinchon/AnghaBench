
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_tx {scalar_t__* head_cpu_ptr; scalar_t__ last_head; } ;


 scalar_t__ lan743x_tx_next_index (struct lan743x_tx*,scalar_t__) ;
 int lan743x_tx_release_desc (struct lan743x_tx*,scalar_t__,int) ;

__attribute__((used)) static void lan743x_tx_release_completed_descriptors(struct lan743x_tx *tx)
{
 while ((*tx->head_cpu_ptr) != (tx->last_head)) {
  lan743x_tx_release_desc(tx, tx->last_head, 0);
  tx->last_head = lan743x_tx_next_index(tx, tx->last_head);
 }
}
