
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int* dev_addr; } ;
struct emac_board_info {scalar_t__ membase; } ;


 scalar_t__ EMAC_INT_CTL_REG ;
 scalar_t__ EMAC_INT_STA_REG ;
 scalar_t__ EMAC_MAC_A0_REG ;
 scalar_t__ EMAC_MAC_A1_REG ;
 scalar_t__ EMAC_MAC_CTL0_REG ;
 unsigned int EMAC_MAC_CTL0_SOFT_RESET ;
 scalar_t__ EMAC_MAC_MCFG_REG ;
 scalar_t__ EMAC_RX_CTL_REG ;
 scalar_t__ EMAC_RX_FBC_REG ;
 int emac_setup (struct net_device*) ;
 int mdelay (int) ;
 struct emac_board_info* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static unsigned int emac_powerup(struct net_device *ndev)
{
 struct emac_board_info *db = netdev_priv(ndev);
 unsigned int reg_val;



 reg_val = readl(db->membase + EMAC_RX_CTL_REG);
 reg_val |= 0x8;
 writel(reg_val, db->membase + EMAC_RX_CTL_REG);
 udelay(1);



 reg_val = readl(db->membase + EMAC_MAC_CTL0_REG);
 reg_val &= ~EMAC_MAC_CTL0_SOFT_RESET;
 writel(reg_val, db->membase + EMAC_MAC_CTL0_REG);


 reg_val = readl(db->membase + EMAC_MAC_MCFG_REG);
 reg_val &= (~(0xf << 2));
 reg_val |= (0xD << 2);
 writel(reg_val, db->membase + EMAC_MAC_MCFG_REG);


 writel(0x0, db->membase + EMAC_RX_FBC_REG);


 writel(0, db->membase + EMAC_INT_CTL_REG);
 reg_val = readl(db->membase + EMAC_INT_STA_REG);
 writel(reg_val, db->membase + EMAC_INT_STA_REG);

 udelay(1);


 emac_setup(ndev);


 writel(ndev->dev_addr[0] << 16 | ndev->dev_addr[1] << 8 | ndev->
        dev_addr[2], db->membase + EMAC_MAC_A1_REG);
 writel(ndev->dev_addr[3] << 16 | ndev->dev_addr[4] << 8 | ndev->
        dev_addr[5], db->membase + EMAC_MAC_A0_REG);

 mdelay(1);

 return 0;
}
