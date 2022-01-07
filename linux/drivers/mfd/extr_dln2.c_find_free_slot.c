
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct dln2_rx_context {int in_use; } ;
struct dln2_mod_rx_slots {int lock; int bmap; struct dln2_rx_context* slots; } ;
struct dln2_dev {struct dln2_mod_rx_slots* mod_rx_slots; scalar_t__ disconnect; } ;


 int DLN2_MAX_RX_SLOTS ;
 int ENODEV ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool find_free_slot(struct dln2_dev *dln2, u16 handle, int *slot)
{
 struct dln2_mod_rx_slots *rxs;
 unsigned long flags;

 if (dln2->disconnect) {
  *slot = -ENODEV;
  return 1;
 }

 rxs = &dln2->mod_rx_slots[handle];

 spin_lock_irqsave(&rxs->lock, flags);

 *slot = find_first_zero_bit(rxs->bmap, DLN2_MAX_RX_SLOTS);

 if (*slot < DLN2_MAX_RX_SLOTS) {
  struct dln2_rx_context *rxc = &rxs->slots[*slot];

  set_bit(*slot, rxs->bmap);
  rxc->in_use = 1;
 }

 spin_unlock_irqrestore(&rxs->lock, flags);

 return *slot < DLN2_MAX_RX_SLOTS;
}
