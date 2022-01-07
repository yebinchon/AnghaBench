
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct jme_adapter {int chip_main_rev; int chip_sub_rev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int ENODEV ;
 int JME_FLAG_PHYEA_ENABLE ;
 int JM_PHY_EXT_COMM_0_REG ;
 int JM_PHY_EXT_COMM_1_REG ;


 int PCI_PRIV_SHARE_NICCTRL ;
 int jme_phy_specreg_write (struct jme_adapter*,int ,int) ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;

__attribute__((used)) static int
jme_phy_setEA(struct jme_adapter *jme)
{
 u32 phy_comm0 = 0, phy_comm1 = 0;
 u8 nic_ctrl;

 pci_read_config_byte(jme->pdev, PCI_PRIV_SHARE_NICCTRL, &nic_ctrl);
 if ((nic_ctrl & 0x3) == JME_FLAG_PHYEA_ENABLE)
  return 0;

 switch (jme->pdev->device) {
 case 129:
  if (((jme->chip_main_rev == 5) &&
   ((jme->chip_sub_rev == 0) || (jme->chip_sub_rev == 1) ||
   (jme->chip_sub_rev == 3))) ||
   (jme->chip_main_rev >= 6)) {
   phy_comm0 = 0x008A;
   phy_comm1 = 0x4109;
  }
  if ((jme->chip_main_rev == 3) &&
   ((jme->chip_sub_rev == 1) || (jme->chip_sub_rev == 2)))
   phy_comm0 = 0xE088;
  break;
 case 128:
  if (((jme->chip_main_rev == 5) &&
   ((jme->chip_sub_rev == 0) || (jme->chip_sub_rev == 1) ||
   (jme->chip_sub_rev == 3))) ||
   (jme->chip_main_rev >= 6)) {
   phy_comm0 = 0x008A;
   phy_comm1 = 0x4109;
  }
  if ((jme->chip_main_rev == 3) &&
   ((jme->chip_sub_rev == 1) || (jme->chip_sub_rev == 2)))
   phy_comm0 = 0xE088;
  if ((jme->chip_main_rev == 2) && (jme->chip_sub_rev == 0))
   phy_comm0 = 0x608A;
  if ((jme->chip_main_rev == 2) && (jme->chip_sub_rev == 2))
   phy_comm0 = 0x408A;
  break;
 default:
  return -ENODEV;
 }
 if (phy_comm0)
  jme_phy_specreg_write(jme, JM_PHY_EXT_COMM_0_REG, phy_comm0);
 if (phy_comm1)
  jme_phy_specreg_write(jme, JM_PHY_EXT_COMM_1_REG, phy_comm1);

 return 0;
}
