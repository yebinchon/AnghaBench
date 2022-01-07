
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {int reg_txpfc; int reg_rxmcs; int phy_lock; TYPE_1__ mii_if; int dev; int rxmcs_lock; } ;
struct ethtool_pauseparam {scalar_t__ tx_pause; scalar_t__ rx_pause; scalar_t__ autoneg; } ;


 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int JME_RXMCS ;
 int JME_TXPFC ;
 int MII_ADVERTISE ;
 int RXMCS_FLOWCTRL ;
 int TXPFC_PF_EN ;
 int jme_mdio_read (int ,int ,int ) ;
 int jme_mdio_write (int ,int ,int ,int) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_set_pauseparam(struct net_device *netdev,
   struct ethtool_pauseparam *ecmd)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 u32 val;

 if (((jme->reg_txpfc & TXPFC_PF_EN) != 0) ^
  (ecmd->tx_pause != 0)) {

  if (ecmd->tx_pause)
   jme->reg_txpfc |= TXPFC_PF_EN;
  else
   jme->reg_txpfc &= ~TXPFC_PF_EN;

  jwrite32(jme, JME_TXPFC, jme->reg_txpfc);
 }

 spin_lock_bh(&jme->rxmcs_lock);
 if (((jme->reg_rxmcs & RXMCS_FLOWCTRL) != 0) ^
  (ecmd->rx_pause != 0)) {

  if (ecmd->rx_pause)
   jme->reg_rxmcs |= RXMCS_FLOWCTRL;
  else
   jme->reg_rxmcs &= ~RXMCS_FLOWCTRL;

  jwrite32(jme, JME_RXMCS, jme->reg_rxmcs);
 }
 spin_unlock_bh(&jme->rxmcs_lock);

 spin_lock_bh(&jme->phy_lock);
 val = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_ADVERTISE);
 if (((val & (ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM)) != 0) ^
  (ecmd->autoneg != 0)) {

  if (ecmd->autoneg)
   val |= (ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);
  else
   val &= ~(ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM);

  jme_mdio_write(jme->dev, jme->mii_if.phy_id,
    MII_ADVERTISE, val);
 }
 spin_unlock_bh(&jme->phy_lock);

 return 0;
}
