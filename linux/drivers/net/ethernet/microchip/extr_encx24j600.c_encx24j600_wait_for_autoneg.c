
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct encx24j600_priv {scalar_t__ speed; int full_duplex; int autoneg; struct net_device* ndev; } ;


 int ANDONE ;
 int AUTONEG_DISABLE ;
 int ESTAT ;
 int ETIMEDOUT ;
 int FULDPX ;
 int MABBIPG ;
 int MACLCON ;
 int MACON2 ;
 int PHSTAT1 ;
 int PHSTAT3 ;
 int PHY3DPX ;
 int PHY3SPD100 ;
 int PHYDPX ;
 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int cpu_relax () ;
 int drv ;
 int encx24j600_clr_bits (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_read_phy (struct encx24j600_priv*,int ) ;
 int encx24j600_read_reg (struct encx24j600_priv*,int ) ;
 int encx24j600_set_bits (struct encx24j600_priv*,int ,int ) ;
 int encx24j600_update_phcon1 (struct encx24j600_priv*) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int netif_notice (struct encx24j600_priv*,int ,struct net_device*,char*,...) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int encx24j600_wait_for_autoneg(struct encx24j600_priv *priv)
{
 struct net_device *dev = priv->ndev;
 unsigned long timeout = jiffies + msecs_to_jiffies(2000);
 u16 phstat1;
 u16 estat;
 int ret = 0;

 phstat1 = encx24j600_read_phy(priv, PHSTAT1);
 while ((phstat1 & ANDONE) == 0) {
  if (time_after(jiffies, timeout)) {
   u16 phstat3;

   netif_notice(priv, drv, dev, "timeout waiting for autoneg done\n");

   priv->autoneg = AUTONEG_DISABLE;
   phstat3 = encx24j600_read_phy(priv, PHSTAT3);
   priv->speed = (phstat3 & PHY3SPD100)
          ? SPEED_100 : SPEED_10;
   priv->full_duplex = (phstat3 & PHY3DPX) ? 1 : 0;
   encx24j600_update_phcon1(priv);
   netif_notice(priv, drv, dev, "Using parallel detection: %s/%s",
         priv->speed == SPEED_100 ? "100" : "10",
         priv->full_duplex ? "Full" : "Half");

   return -ETIMEDOUT;
  }
  cpu_relax();
  phstat1 = encx24j600_read_phy(priv, PHSTAT1);
 }

 estat = encx24j600_read_reg(priv, ESTAT);
 if (estat & PHYDPX) {
  encx24j600_set_bits(priv, MACON2, FULDPX);
  encx24j600_write_reg(priv, MABBIPG, 0x15);
 } else {
  encx24j600_clr_bits(priv, MACON2, FULDPX);
  encx24j600_write_reg(priv, MABBIPG, 0x12);

  encx24j600_write_reg(priv, MACLCON, 0x370f);
 }

 return ret;
}
