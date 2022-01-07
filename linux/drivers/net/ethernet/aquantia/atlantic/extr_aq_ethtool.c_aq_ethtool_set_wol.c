
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int wol; } ;


 int AQ_NIC_WOL_ENABLED ;
 int WAKE_MAGIC ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 int device_set_wakeup_enable (int *,int) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int aq_ethtool_set_wol(struct net_device *ndev,
         struct ethtool_wolinfo *wol)
{
 struct pci_dev *pdev = to_pci_dev(ndev->dev.parent);
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);
 int err = 0;

 if (wol->wolopts & WAKE_MAGIC)
  cfg->wol |= AQ_NIC_WOL_ENABLED;
 else
  cfg->wol &= ~AQ_NIC_WOL_ENABLED;
 err = device_set_wakeup_enable(&pdev->dev, wol->wolopts);

 return err;
}
