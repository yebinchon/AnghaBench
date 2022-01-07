
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sky2_port {int dummy; } ;
struct sky2_hw {int * dev; } ;


 int B0_IMSK ;
 int B2_TST_CTRL1 ;
 int PSM_CONFIG_REG4 ;
 int TST_CFG_WRITE_OFF ;
 int TST_CFG_WRITE_ON ;
 int Y2_IS_PHY_QLNK ;
 struct sky2_port* netdev_priv (int ) ;
 int sky2_link_up (struct sky2_port*) ;
 int sky2_pci_read16 (struct sky2_hw*,int ) ;
 int sky2_pci_write16 (struct sky2_hw*,int ,int) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_qlink_intr(struct sky2_hw *hw)
{
 struct sky2_port *sky2 = netdev_priv(hw->dev[0]);
 u32 imask;
 u16 phy;


 imask = sky2_read32(hw, B0_IMSK);
 imask &= ~Y2_IS_PHY_QLNK;
 sky2_write32(hw, B0_IMSK, imask);


 phy = sky2_pci_read16(hw, PSM_CONFIG_REG4);
 sky2_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
 sky2_pci_write16(hw, PSM_CONFIG_REG4, phy | 1);
 sky2_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);

 sky2_link_up(sky2);
}
