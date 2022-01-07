
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_device {int ar; } ;


 int ath6kl_hif_disable_intrs (struct ath6kl_device*) ;
 int ath6kl_hif_irq_disable (int ) ;

int ath6kl_hif_mask_intrs(struct ath6kl_device *dev)
{





 ath6kl_hif_irq_disable(dev->ar);

 return ath6kl_hif_disable_intrs(dev);
}
