
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htc_ep_callbacks {scalar_t__ rx_refill_thresh; int (* rx_refill ) (TYPE_1__*,int ) ;} ;
struct htc_endpoint {TYPE_1__* target; int eid; int rx_bufq; struct htc_ep_callbacks ep_cb; } ;
struct TYPE_2__ {int rx_lock; } ;


 scalar_t__ get_queue_depth (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void ath6kl_htc_rx_chk_water_mark(struct htc_endpoint *endpoint)
{
 struct htc_ep_callbacks ep_cb = endpoint->ep_cb;

 if (ep_cb.rx_refill_thresh > 0) {
  spin_lock_bh(&endpoint->target->rx_lock);
  if (get_queue_depth(&endpoint->rx_bufq)
      < ep_cb.rx_refill_thresh) {
   spin_unlock_bh(&endpoint->target->rx_lock);
   ep_cb.rx_refill(endpoint->target, endpoint->eid);
   return;
  }
  spin_unlock_bh(&endpoint->target->rx_lock);
 }
}
