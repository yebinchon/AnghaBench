
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct device {int dummy; } ;
struct be_dma_mem {int size; int dma; int va; } ;
struct be_cmd_req_acpi_wol_magic_config {int dummy; } ;
struct be_adapter {int wol_cap; int wol_en; TYPE_2__* pdev; TYPE_1__* netdev; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int BE_WOL_CAP ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int PCI_D3cold ;
 int PCI_D3hot ;
 int WAKE_MAGIC ;
 int be_cmd_enable_magic_wol (struct be_adapter*,int *,struct be_dma_mem*) ;
 int be_cmd_status (int) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 int eth_zero_addr (int *) ;
 int ether_addr_copy (int *,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int pci_enable_wake (TYPE_2__*,int ,int) ;

__attribute__((used)) static int be_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct device *dev = &adapter->pdev->dev;
 struct be_dma_mem cmd;
 u8 mac[ETH_ALEN];
 bool enable;
 int status;

 if (wol->wolopts & ~WAKE_MAGIC)
  return -EOPNOTSUPP;

 if (!(adapter->wol_cap & BE_WOL_CAP)) {
  dev_warn(&adapter->pdev->dev, "WOL not supported\n");
  return -EOPNOTSUPP;
 }

 cmd.size = sizeof(struct be_cmd_req_acpi_wol_magic_config);
 cmd.va = dma_alloc_coherent(dev, cmd.size, &cmd.dma, GFP_KERNEL);
 if (!cmd.va)
  return -ENOMEM;

 eth_zero_addr(mac);

 enable = wol->wolopts & WAKE_MAGIC;
 if (enable)
  ether_addr_copy(mac, adapter->netdev->dev_addr);

 status = be_cmd_enable_magic_wol(adapter, mac, &cmd);
 if (status) {
  dev_err(dev, "Could not set Wake-on-lan mac address\n");
  status = be_cmd_status(status);
  goto err;
 }

 pci_enable_wake(adapter->pdev, PCI_D3hot, enable);
 pci_enable_wake(adapter->pdev, PCI_D3cold, enable);

 adapter->wol_en = enable ? 1 : 0;

err:
 dma_free_coherent(dev, cmd.size, cmd.va, cmd.dma);
 return status;
}
