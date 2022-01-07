
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_3__ {int addr; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct i40e_pf {TYPE_2__ hw; } ;


 scalar_t__ eth_platform_get_mac_address (int *,int ) ;
 int i40e_get_mac_addr (TYPE_2__*,int ) ;

__attribute__((used)) static void i40e_get_platform_mac_addr(struct pci_dev *pdev, struct i40e_pf *pf)
{
 if (eth_platform_get_mac_address(&pdev->dev, pf->hw.mac.addr))
  i40e_get_mac_addr(&pf->hw, pf->hw.mac.addr);
}
