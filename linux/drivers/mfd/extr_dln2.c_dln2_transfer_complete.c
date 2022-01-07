
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct urb {int dummy; } ;
struct dln2_rx_context {int done; struct urb* urb; scalar_t__ in_use; } ;
struct dln2_mod_rx_slots {int lock; struct dln2_rx_context* slots; } ;
struct dln2_dev {struct dln2_mod_rx_slots* mod_rx_slots; TYPE_1__* interface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 size_t DLN2_MAX_RX_SLOTS ;
 int complete (int *) ;
 int dev_warn (struct device*,char*,size_t,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool dln2_transfer_complete(struct dln2_dev *dln2, struct urb *urb,
       u16 handle, u16 rx_slot)
{
 struct device *dev = &dln2->interface->dev;
 struct dln2_mod_rx_slots *rxs = &dln2->mod_rx_slots[handle];
 struct dln2_rx_context *rxc;
 unsigned long flags;
 bool valid_slot = 0;

 if (rx_slot >= DLN2_MAX_RX_SLOTS)
  goto out;

 rxc = &rxs->slots[rx_slot];

 spin_lock_irqsave(&rxs->lock, flags);
 if (rxc->in_use && !rxc->urb) {
  rxc->urb = urb;
  complete(&rxc->done);
  valid_slot = 1;
 }
 spin_unlock_irqrestore(&rxs->lock, flags);

out:
 if (!valid_slot)
  dev_warn(dev, "bad/late response %d/%d\n", handle, rx_slot);

 return valid_slot;
}
