
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jme_adapter {TYPE_1__* pdev; TYPE_2__* dev; int flags; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int irq; } ;


 int JME_FLAG_MSI ;
 int clear_bit (int ,int *) ;
 int free_irq (int ,TYPE_2__*) ;
 int pci_disable_msi (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
jme_free_irq(struct jme_adapter *jme)
{
 free_irq(jme->pdev->irq, jme->dev);
 if (test_bit(JME_FLAG_MSI, &jme->flags)) {
  pci_disable_msi(jme->pdev);
  clear_bit(JME_FLAG_MSI, &jme->flags);
  jme->dev->irq = jme->pdev->irq;
 }
}
