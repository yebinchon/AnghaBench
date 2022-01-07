
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rocker_wait {scalar_t__ nowait; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int cmd_ring; int cmd_ring_lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct rocker_wait* rocker_desc_cookie_ptr_get (struct rocker_desc_info const*) ;
 int rocker_desc_gen_clear (struct rocker_desc_info const*) ;
 struct rocker_desc_info* rocker_desc_tail_get (int *) ;
 int rocker_dma_ring_credits_set (struct rocker*,int *,scalar_t__) ;
 int rocker_wait_wake_up (struct rocker_wait*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t rocker_cmd_irq_handler(int irq, void *dev_id)
{
 struct rocker *rocker = dev_id;
 const struct rocker_desc_info *desc_info;
 struct rocker_wait *wait;
 u32 credits = 0;

 spin_lock(&rocker->cmd_ring_lock);
 while ((desc_info = rocker_desc_tail_get(&rocker->cmd_ring))) {
  wait = rocker_desc_cookie_ptr_get(desc_info);
  if (wait->nowait) {
   rocker_desc_gen_clear(desc_info);
  } else {
   rocker_wait_wake_up(wait);
  }
  credits++;
 }
 spin_unlock(&rocker->cmd_ring_lock);
 rocker_dma_ring_credits_set(rocker, &rocker->cmd_ring, credits);

 return IRQ_HANDLED;
}
