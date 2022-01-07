
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct smc_private {scalar_t__ manfid; scalar_t__ cardid; int cfg; int duplex; TYPE_1__ mii_if; } ;
struct net_device {unsigned int base_addr; int if_port; int* dev_addr; } ;


 scalar_t__ ADDR0 ;
 int CFG_MII_SELECT ;
 scalar_t__ CONTROL ;
 int CTL_AUTO_RELEASE ;
 int CTL_CR_ENABLE ;
 int CTL_TE_ENABLE ;
 int IM_EPH_INT ;
 int IM_RCV_INT ;
 int IM_RX_OVRN_INT ;
 scalar_t__ INTERRUPT ;
 scalar_t__ MANFID_OSITECH ;
 int MC_RESET ;
 scalar_t__ MMU_CMD ;
 scalar_t__ OSITECH_AUI_PWR ;
 int OSI_AUI_PWR ;
 scalar_t__ PRODID_OSITECH_SEVEN ;
 scalar_t__ RCR ;
 int RCR_CLEAR ;
 int RCR_SOFTRESET ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int TCR_CLEAR ;
 int TCR_ENABLE ;
 int TCR_MONCSN ;
 int TCR_PAD_EN ;
 int inw (scalar_t__) ;
 int mdio_write (struct net_device*,int ,int,int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int outw (int,scalar_t__) ;
 int set_rx_mode (struct net_device*) ;
 int smc_set_xcvr (struct net_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static void smc_reset(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct smc_private *smc = netdev_priv(dev);
    int i;

    netdev_dbg(dev, "smc91c92 reset called.\n");



    SMC_SELECT_BANK(0);

    outw(RCR_SOFTRESET, ioaddr + RCR);
    udelay(10);


    outw(RCR_CLEAR, ioaddr + RCR);
    outw(TCR_CLEAR, ioaddr + TCR);



    SMC_SELECT_BANK(1);


    outw(CTL_AUTO_RELEASE | CTL_TE_ENABLE | CTL_CR_ENABLE,
  ioaddr + CONTROL);
    smc_set_xcvr(dev, dev->if_port);
    if ((smc->manfid == MANFID_OSITECH) &&
 (smc->cardid != PRODID_OSITECH_SEVEN))
 outw((dev->if_port == 2 ? OSI_AUI_PWR : 0) |
      (inw(ioaddr-0x10+OSITECH_AUI_PWR) & 0xff00),
      ioaddr - 0x10 + OSITECH_AUI_PWR);


    for (i = 0; i < 6; i += 2)
 outw((dev->dev_addr[i+1]<<8)+dev->dev_addr[i],
      ioaddr + ADDR0 + i);


    SMC_SELECT_BANK(2);
    outw(MC_RESET, ioaddr + MMU_CMD);
    outw(0, ioaddr + INTERRUPT);


    SMC_SELECT_BANK(0);
    outw(((smc->cfg & CFG_MII_SELECT) ? 0 : TCR_MONCSN) |
  TCR_ENABLE | TCR_PAD_EN | smc->duplex, ioaddr + TCR);
    set_rx_mode(dev);

    if (smc->cfg & CFG_MII_SELECT) {
 SMC_SELECT_BANK(3);


 mdio_write(dev, smc->mii_if.phy_id, 0, 0x8000);


 mdio_write(dev, smc->mii_if.phy_id, 4, 0x01e1);


 mdio_write(dev, smc->mii_if.phy_id, 0, 0x0000);
 mdio_write(dev, smc->mii_if.phy_id, 0, 0x1200);
    }


    SMC_SELECT_BANK(2);
    outw((IM_EPH_INT | IM_RX_OVRN_INT | IM_RCV_INT) << 8,
  ioaddr + INTERRUPT);
}
