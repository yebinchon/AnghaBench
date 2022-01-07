
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct atl2_adapter {int have_msi; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int atl2_intr ;
 int pci_enable_msi (TYPE_1__*) ;
 int request_irq (int ,int ,int,int ,struct net_device*) ;

__attribute__((used)) static int atl2_request_irq(struct atl2_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int flags, err = 0;

 flags = IRQF_SHARED;
 adapter->have_msi = 1;
 err = pci_enable_msi(adapter->pdev);
 if (err)
  adapter->have_msi = 0;

 if (adapter->have_msi)
  flags &= ~IRQF_SHARED;

 return request_irq(adapter->pdev->irq, atl2_intr, flags, netdev->name,
  netdev);
}
