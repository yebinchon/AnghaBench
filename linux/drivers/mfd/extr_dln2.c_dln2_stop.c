
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_rx_context {int done; scalar_t__ in_use; } ;
struct dln2_mod_rx_slots {int lock; struct dln2_rx_context* slots; } ;
struct dln2_dev {int disconnect; int active_transfers; int disconnect_wq; struct dln2_mod_rx_slots* mod_rx_slots; int disconnect_lock; } ;


 int DLN2_HANDLES ;
 int DLN2_MAX_RX_SLOTS ;
 int complete (int *) ;
 int dln2_stop_rx_urbs (struct dln2_dev*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void dln2_stop(struct dln2_dev *dln2)
{
 int i, j;


 spin_lock(&dln2->disconnect_lock);
 dln2->disconnect = 1;
 spin_unlock(&dln2->disconnect_lock);


 for (i = 0; i < DLN2_HANDLES; i++) {
  struct dln2_mod_rx_slots *rxs = &dln2->mod_rx_slots[i];
  unsigned long flags;

  spin_lock_irqsave(&rxs->lock, flags);


  for (j = 0; j < DLN2_MAX_RX_SLOTS; j++) {
   struct dln2_rx_context *rxc = &rxs->slots[j];

   if (rxc->in_use)
    complete(&rxc->done);
  }

  spin_unlock_irqrestore(&rxs->lock, flags);
 }


 wait_event(dln2->disconnect_wq, !dln2->active_transfers);

 dln2_stop_rx_urbs(dln2);
}
