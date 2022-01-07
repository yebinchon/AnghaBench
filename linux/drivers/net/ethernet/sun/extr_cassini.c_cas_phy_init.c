
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cas {int phy_type; int phy_id; int cas_flags; scalar_t__ regs; int dev; } ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int BMCR_ANENABLE ;
 int BROADCOM_MII_REG4 ;
 int BROADCOM_MII_REG5 ;
 int BROADCOM_MII_REG7 ;
 int BROADCOM_MII_REG8 ;
 int CAS_ADVERTISE_1000FULL ;
 int CAS_ADVERTISE_1000HALF ;
 int CAS_ADVERTISE_ASYM_PAUSE ;
 int CAS_ADVERTISE_PAUSE ;
 int CAS_FLAG_1000MB_CAP ;
 int CAS_FLAG_SATURN ;
 int CAS_MII_1000_CTRL ;
 scalar_t__ CAS_PHY_MII (int) ;
 int CAS_PHY_MII_MDIO0 ;
 int LUCENT_MII_REG ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int PCS_CFG_EN ;
 int PCS_DATAPATH_MODE_MII ;
 int PCS_DATAPATH_MODE_SERDES ;
 int PCS_MII_ADVERT_ASYM_PAUSE ;
 int PCS_MII_ADVERT_FD ;
 int PCS_MII_ADVERT_HD ;
 int PCS_MII_ADVERT_SYM_PAUSE ;
 int PCS_MII_RESET ;
 int PCS_SERDES_CTRL_SYNCD_EN ;
 int PHY_BROADCOM_5411 ;
 int PHY_BROADCOM_B0 ;
 int PHY_LUCENT_B0 ;
 scalar_t__ PHY_NS_DP83065 ;
 scalar_t__ REG_PCS_CFG ;
 scalar_t__ REG_PCS_DATAPATH_MODE ;
 scalar_t__ REG_PCS_MII_ADVERT ;
 scalar_t__ REG_PCS_MII_CTRL ;
 scalar_t__ REG_PCS_SERDES_CTRL ;
 scalar_t__ REG_PCS_STATE_MACHINE ;
 scalar_t__ REG_SATURN_PCFG ;
 int SATURN_PCFG_FSI ;
 int STOP_TRIES ;
 int cas_mif_poll (struct cas*,int ) ;
 int cas_phy_powerup (struct cas*) ;
 int cas_phy_read (struct cas*,int ) ;
 int cas_phy_write (struct cas*,int ,int) ;
 int cas_reset_mii_phy (struct cas*) ;
 int cas_saturn_firmware_load (struct cas*) ;
 int netdev_warn (int ,char*,int) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_phy_init(struct cas *cp)
{
 u16 val;


 if (CAS_PHY_MII(cp->phy_type)) {
  writel(PCS_DATAPATH_MODE_MII,
         cp->regs + REG_PCS_DATAPATH_MODE);

  cas_mif_poll(cp, 0);
  cas_reset_mii_phy(cp);

  if (PHY_LUCENT_B0 == cp->phy_id) {

   cas_phy_write(cp, LUCENT_MII_REG, 0x8000);
   cas_phy_write(cp, MII_BMCR, 0x00f1);
   cas_phy_write(cp, LUCENT_MII_REG, 0x0);

  } else if (PHY_BROADCOM_B0 == (cp->phy_id & 0xFFFFFFFC)) {

   cas_phy_write(cp, BROADCOM_MII_REG8, 0x0C20);
   cas_phy_write(cp, BROADCOM_MII_REG7, 0x0012);
   cas_phy_write(cp, BROADCOM_MII_REG5, 0x1804);
   cas_phy_write(cp, BROADCOM_MII_REG7, 0x0013);
   cas_phy_write(cp, BROADCOM_MII_REG5, 0x1204);
   cas_phy_write(cp, BROADCOM_MII_REG7, 0x8006);
   cas_phy_write(cp, BROADCOM_MII_REG5, 0x0132);
   cas_phy_write(cp, BROADCOM_MII_REG7, 0x8006);
   cas_phy_write(cp, BROADCOM_MII_REG5, 0x0232);
   cas_phy_write(cp, BROADCOM_MII_REG7, 0x201F);
   cas_phy_write(cp, BROADCOM_MII_REG5, 0x0A20);

  } else if (PHY_BROADCOM_5411 == cp->phy_id) {
   val = cas_phy_read(cp, BROADCOM_MII_REG4);
   val = cas_phy_read(cp, BROADCOM_MII_REG4);
   if (val & 0x0080) {

    cas_phy_write(cp, BROADCOM_MII_REG4,
           val & ~0x0080);
   }

  } else if (cp->cas_flags & CAS_FLAG_SATURN) {
   writel((cp->phy_type & CAS_PHY_MII_MDIO0) ?
          SATURN_PCFG_FSI : 0x0,
          cp->regs + REG_SATURN_PCFG);





   if (PHY_NS_DP83065 == cp->phy_id) {
    cas_saturn_firmware_load(cp);
   }
   cas_phy_powerup(cp);
  }


  val = cas_phy_read(cp, MII_BMCR);
  val &= ~BMCR_ANENABLE;
  cas_phy_write(cp, MII_BMCR, val);
  udelay(10);

  cas_phy_write(cp, MII_ADVERTISE,
         cas_phy_read(cp, MII_ADVERTISE) |
         (ADVERTISE_10HALF | ADVERTISE_10FULL |
          ADVERTISE_100HALF | ADVERTISE_100FULL |
          CAS_ADVERTISE_PAUSE |
          CAS_ADVERTISE_ASYM_PAUSE));

  if (cp->cas_flags & CAS_FLAG_1000MB_CAP) {



   val = cas_phy_read(cp, CAS_MII_1000_CTRL);
   val &= ~CAS_ADVERTISE_1000HALF;
   val |= CAS_ADVERTISE_1000FULL;
   cas_phy_write(cp, CAS_MII_1000_CTRL, val);
  }

 } else {

  u32 val;
  int limit;

  writel(PCS_DATAPATH_MODE_SERDES,
         cp->regs + REG_PCS_DATAPATH_MODE);


  if (cp->cas_flags & CAS_FLAG_SATURN)
   writel(0, cp->regs + REG_SATURN_PCFG);


  val = readl(cp->regs + REG_PCS_MII_CTRL);
  val |= PCS_MII_RESET;
  writel(val, cp->regs + REG_PCS_MII_CTRL);

  limit = STOP_TRIES;
  while (--limit > 0) {
   udelay(10);
   if ((readl(cp->regs + REG_PCS_MII_CTRL) &
        PCS_MII_RESET) == 0)
    break;
  }
  if (limit <= 0)
   netdev_warn(cp->dev, "PCS reset bit would not clear [%08x]\n",
        readl(cp->regs + REG_PCS_STATE_MACHINE));




  writel(0x0, cp->regs + REG_PCS_CFG);


  val = readl(cp->regs + REG_PCS_MII_ADVERT);
  val &= ~PCS_MII_ADVERT_HD;
  val |= (PCS_MII_ADVERT_FD | PCS_MII_ADVERT_SYM_PAUSE |
   PCS_MII_ADVERT_ASYM_PAUSE);
  writel(val, cp->regs + REG_PCS_MII_ADVERT);


  writel(PCS_CFG_EN, cp->regs + REG_PCS_CFG);


  writel(PCS_SERDES_CTRL_SYNCD_EN,
         cp->regs + REG_PCS_SERDES_CTRL);
 }
}
