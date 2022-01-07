
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_txq {scalar_t__ read_ptr; scalar_t__ write_ptr; scalar_t__ wd_timeout; int stuck_timer; scalar_t__ frozen; int lock; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void iwl_pcie_txq_progress(struct iwl_txq *txq)
{
 lockdep_assert_held(&txq->lock);

 if (!txq->wd_timeout)
  return;





 if (txq->frozen)
  return;





 if (txq->read_ptr == txq->write_ptr)
  del_timer(&txq->stuck_timer);
 else
  mod_timer(&txq->stuck_timer, jiffies + txq->wd_timeout);
}
