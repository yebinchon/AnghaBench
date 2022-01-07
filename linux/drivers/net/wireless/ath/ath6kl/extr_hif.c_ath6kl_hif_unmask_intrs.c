
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_device {int ar; } ;


 int ath6kl_hif_disable_intrs (struct ath6kl_device*) ;
 int ath6kl_hif_enable_intrs (struct ath6kl_device*) ;
 int ath6kl_hif_irq_enable (int ) ;

int ath6kl_hif_unmask_intrs(struct ath6kl_device *dev)
{
 int status = 0;
 ath6kl_hif_disable_intrs(dev);


 ath6kl_hif_irq_enable(dev->ar);
 status = ath6kl_hif_enable_intrs(dev);

 return status;
}
