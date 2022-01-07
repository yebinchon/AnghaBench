
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int n_stats; int regdump_len; scalar_t__ eedump_len; scalar_t__ testinfo_len; int bus_info; int fw_version; int version; int driver; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;


 int AQ_CFG_DRV_NAME ;
 int AQ_CFG_DRV_VERSION ;
 int ARRAY_SIZE (int ) ;
 int aq_ethtool_queue_stat_names ;
 int aq_ethtool_stat_names ;
 struct aq_nic_cfg_s* aq_nic_get_cfg (struct aq_nic_s*) ;
 int aq_nic_get_fw_version (struct aq_nic_s*) ;
 int aq_nic_get_regs_count (struct aq_nic_s*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;
 char* pci_name (struct pci_dev*) ;
 int snprintf (int ,int,char*,int,int,int) ;
 int strlcat (int ,int ,int) ;
 int strlcpy (int ,char*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void aq_ethtool_get_drvinfo(struct net_device *ndev,
       struct ethtool_drvinfo *drvinfo)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);
 struct aq_nic_cfg_s *cfg = aq_nic_get_cfg(aq_nic);
 struct pci_dev *pdev = to_pci_dev(ndev->dev.parent);
 u32 firmware_version = aq_nic_get_fw_version(aq_nic);
 u32 regs_count = aq_nic_get_regs_count(aq_nic);

 strlcat(drvinfo->driver, AQ_CFG_DRV_NAME, sizeof(drvinfo->driver));
 strlcat(drvinfo->version, AQ_CFG_DRV_VERSION, sizeof(drvinfo->version));

 snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
   "%u.%u.%u", firmware_version >> 24,
   (firmware_version >> 16) & 0xFFU, firmware_version & 0xFFFFU);

 strlcpy(drvinfo->bus_info, pdev ? pci_name(pdev) : "",
  sizeof(drvinfo->bus_info));
 drvinfo->n_stats = ARRAY_SIZE(aq_ethtool_stat_names) +
  cfg->vecs * ARRAY_SIZE(aq_ethtool_queue_stat_names);
 drvinfo->testinfo_len = 0;
 drvinfo->regdump_len = regs_count;
 drvinfo->eedump_len = 0;
}
