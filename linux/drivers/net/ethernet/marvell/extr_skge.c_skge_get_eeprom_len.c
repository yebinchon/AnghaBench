
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skge_port {TYPE_1__* hw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int pdev; } ;


 int PCI_DEV_REG2 ;
 int PCI_VPD_ROM_SZ ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int pci_read_config_dword (int ,int ,int*) ;

__attribute__((used)) static int skge_get_eeprom_len(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);
 u32 reg2;

 pci_read_config_dword(skge->hw->pdev, PCI_DEV_REG2, &reg2);
 return 1 << (((reg2 & PCI_VPD_ROM_SZ) >> 14) + 8);
}
