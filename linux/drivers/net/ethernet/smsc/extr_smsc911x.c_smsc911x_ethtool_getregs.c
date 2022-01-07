
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct smsc911x_data {int mac_lock; int idrev; } ;
struct TYPE_2__ {int addr; int bus; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_regs {int version; } ;


 unsigned int E2P_DATA ;
 unsigned int ID_REV ;
 unsigned int MAC_CR ;
 unsigned int WUCSR ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int smsc911x_mac_read (struct smsc911x_data*,unsigned int) ;
 int smsc911x_mii_read (int ,int ,unsigned int) ;
 int smsc911x_reg_read (struct smsc911x_data*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
smsc911x_ethtool_getregs(struct net_device *dev, struct ethtool_regs *regs,
    void *buf)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 struct phy_device *phy_dev = dev->phydev;
 unsigned long flags;
 unsigned int i;
 unsigned int j = 0;
 u32 *data = buf;

 regs->version = pdata->idrev;
 for (i = ID_REV; i <= E2P_DATA; i += (sizeof(u32)))
  data[j++] = smsc911x_reg_read(pdata, i);

 for (i = MAC_CR; i <= WUCSR; i++) {
  spin_lock_irqsave(&pdata->mac_lock, flags);
  data[j++] = smsc911x_mac_read(pdata, i);
  spin_unlock_irqrestore(&pdata->mac_lock, flags);
 }

 for (i = 0; i <= 31; i++)
  data[j++] = smsc911x_mii_read(phy_dev->mdio.bus,
           phy_dev->mdio.addr, i);
}
