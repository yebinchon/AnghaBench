
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_upr {scalar_t__ type; } ;
struct slic_device {int netdev; } ;


 int SLIC_ISR_UPCERR_MASK ;
 scalar_t__ SLIC_UPR_LSTAT ;
 int kfree (struct slic_upr*) ;
 int netdev_warn (int ,char*) ;
 struct slic_upr* slic_dequeue_upr (struct slic_device*) ;
 int slic_handle_link_irq (struct slic_device*) ;
 int slic_queue_upr (struct slic_device*,struct slic_upr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void slic_handle_upr_irq(struct slic_device *sdev, u32 irqs)
{
 struct slic_upr *upr;


 upr = slic_dequeue_upr(sdev);
 if (!upr) {
  netdev_warn(sdev->netdev, "no upr found on list\n");
  return;
 }

 if (upr->type == SLIC_UPR_LSTAT) {
  if (unlikely(irqs & SLIC_ISR_UPCERR_MASK)) {

   slic_queue_upr(sdev, upr);
   return;
  }
  slic_handle_link_irq(sdev);
 }
 kfree(upr);
}
