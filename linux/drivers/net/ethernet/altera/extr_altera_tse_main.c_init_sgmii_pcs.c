
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct altera_tse_private {scalar_t__ phy_iface; } ;


 unsigned int BMCR_ANENABLE ;
 unsigned int BMCR_FULLDPLX ;
 unsigned int BMCR_RESET ;
 unsigned int BMCR_SPEED1000 ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int MII_BMCR ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int SGMII_PCS_IF_MODE ;
 int SGMII_PCS_LINK_TIMER_0 ;
 int SGMII_PCS_LINK_TIMER_1 ;
 int SGMII_PCS_SW_RESET_TIMEOUT ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 unsigned int sgmii_pcs_read (struct altera_tse_private*,int ) ;
 scalar_t__ sgmii_pcs_scratch_test (struct altera_tse_private*,int) ;
 int sgmii_pcs_write (struct altera_tse_private*,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int init_sgmii_pcs(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 int n;
 unsigned int tmp_reg = 0;

 if (priv->phy_iface != PHY_INTERFACE_MODE_SGMII)
  return 0;
 if (sgmii_pcs_scratch_test(priv, 0x0000) &&
  sgmii_pcs_scratch_test(priv, 0xffff) &&
  sgmii_pcs_scratch_test(priv, 0xa5a5) &&
  sgmii_pcs_scratch_test(priv, 0x5a5a)) {
  netdev_info(dev, "PCS PHY ID: 0x%04x%04x\n",
    sgmii_pcs_read(priv, MII_PHYSID1),
    sgmii_pcs_read(priv, MII_PHYSID2));
 } else {
  netdev_err(dev, "SGMII PCS Scratch memory test failed.\n");
  return -ENOMEM;
 }




 sgmii_pcs_write(priv, SGMII_PCS_LINK_TIMER_0, 0x0D40);
 sgmii_pcs_write(priv, SGMII_PCS_LINK_TIMER_1, 0x03);


 sgmii_pcs_write(priv, SGMII_PCS_IF_MODE, 0x3);


 tmp_reg = sgmii_pcs_read(priv, MII_BMCR);
 tmp_reg |= (BMCR_SPEED1000 | BMCR_FULLDPLX | BMCR_ANENABLE);
 sgmii_pcs_write(priv, MII_BMCR, tmp_reg);


 tmp_reg |= BMCR_RESET;
 sgmii_pcs_write(priv, MII_BMCR, tmp_reg);
 for (n = 0; n < SGMII_PCS_SW_RESET_TIMEOUT; n++) {
  if (!(sgmii_pcs_read(priv, MII_BMCR) & BMCR_RESET)) {
   netdev_info(dev, "SGMII PCS block initialised OK\n");
   return 0;
  }
  udelay(1);
 }


 netdev_err(dev, "SGMII PCS block reset failed.\n");
 return -ETIMEDOUT;
}
