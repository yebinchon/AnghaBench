
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct atl1c_adapter {TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct TYPE_2__ {int features; } ;


 int atl1c_vlan_mode (TYPE_1__*,int ) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ netif_msg_pktdata (struct atl1c_adapter*) ;

__attribute__((used)) static void atl1c_restore_vlan(struct atl1c_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 if (netif_msg_pktdata(adapter))
  dev_dbg(&pdev->dev, "atl1c_restore_vlan\n");
 atl1c_vlan_mode(adapter->netdev, adapter->netdev->features);
}
