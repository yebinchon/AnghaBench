
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int irq; int name; } ;
struct jme_adapter {TYPE_1__* pdev; int flags; struct net_device* dev; } ;
typedef int irq_handler_t ;
struct TYPE_3__ {int irq; } ;


 int IRQF_SHARED ;
 int JME_FLAG_MSI ;
 int clear_bit (int ,int *) ;
 int jme_intr ;
 int jme_msi ;
 int netdev_err (struct net_device*,char*,char*,int) ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;
 int request_irq (int ,int ,int,int ,struct net_device*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
jme_request_irq(struct jme_adapter *jme)
{
 int rc;
 struct net_device *netdev = jme->dev;
 irq_handler_t handler = jme_intr;
 int irq_flags = IRQF_SHARED;

 if (!pci_enable_msi(jme->pdev)) {
  set_bit(JME_FLAG_MSI, &jme->flags);
  handler = jme_msi;
  irq_flags = 0;
 }

 rc = request_irq(jme->pdev->irq, handler, irq_flags, netdev->name,
     netdev);
 if (rc) {
  netdev_err(netdev,
      "Unable to request %s interrupt (return: %d)\n",
      test_bit(JME_FLAG_MSI, &jme->flags) ? "MSI" : "INTx",
      rc);

  if (test_bit(JME_FLAG_MSI, &jme->flags)) {
   pci_disable_msi(jme->pdev);
   clear_bit(JME_FLAG_MSI, &jme->flags);
  }
 } else {
  netdev->irq = jme->pdev->irq;
 }

 return rc;
}
