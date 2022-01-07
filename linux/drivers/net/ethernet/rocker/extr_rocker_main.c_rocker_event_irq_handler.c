
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int event_ring; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_err (int *,char*,int) ;
 int rocker_desc_err (struct rocker_desc_info const*) ;
 int rocker_desc_gen_clear (struct rocker_desc_info const*) ;
 int rocker_desc_head_set (struct rocker*,int *,struct rocker_desc_info const*) ;
 struct rocker_desc_info* rocker_desc_tail_get (int *) ;
 int rocker_dma_ring_credits_set (struct rocker*,int *,scalar_t__) ;
 int rocker_event_process (struct rocker*,struct rocker_desc_info const*) ;

__attribute__((used)) static irqreturn_t rocker_event_irq_handler(int irq, void *dev_id)
{
 struct rocker *rocker = dev_id;
 const struct pci_dev *pdev = rocker->pdev;
 const struct rocker_desc_info *desc_info;
 u32 credits = 0;
 int err;

 while ((desc_info = rocker_desc_tail_get(&rocker->event_ring))) {
  err = rocker_desc_err(desc_info);
  if (err) {
   dev_err(&pdev->dev, "event desc received with err %d\n",
    err);
  } else {
   err = rocker_event_process(rocker, desc_info);
   if (err)
    dev_err(&pdev->dev, "event processing failed with err %d\n",
     err);
  }
  rocker_desc_gen_clear(desc_info);
  rocker_desc_head_set(rocker, &rocker->event_ring, desc_info);
  credits++;
 }
 rocker_dma_ring_credits_set(rocker, &rocker->event_ring, credits);

 return IRQ_HANDLED;
}
