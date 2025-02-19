
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ep93xx_priv {int dummy; } ;


 int REG_MIICMD ;
 int REG_MIICMD_WRITE ;
 int REG_MIIDATA ;
 int REG_MIISTS ;
 int REG_MIISTS_BUSY ;
 int msleep (int) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;
 int pr_info (char*) ;
 int rdl (struct ep93xx_priv*,int ) ;
 int wrl (struct ep93xx_priv*,int ,int) ;

__attribute__((used)) static void ep93xx_mdio_write(struct net_device *dev, int phy_id, int reg, int data)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 int i;

 wrl(ep, REG_MIIDATA, data);
 wrl(ep, REG_MIICMD, REG_MIICMD_WRITE | (phy_id << 5) | reg);

 for (i = 0; i < 10; i++) {
  if ((rdl(ep, REG_MIISTS) & REG_MIISTS_BUSY) == 0)
   break;
  msleep(1);
 }

 if (i == 10)
  pr_info("mdio write timed out\n");
}
