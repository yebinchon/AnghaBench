
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* an_advertising ) (struct xgbe_prv_data*,struct ethtool_link_ksettings*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {int an_mode; int netdev; TYPE_2__ phy_if; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int Asym_Pause ;
 int MDIO_MMD_VEND2 ;
 int MDIO_VEND2_AN_ADVERTISE ;
 int MDIO_VEND2_AN_CTRL ;
 int Pause ;
 scalar_t__ XGBE_ADV (struct ethtool_link_ksettings*,int ) ;
 unsigned int XGBE_AN_CL37_FD_MASK ;
 unsigned int XGBE_AN_CL37_HD_MASK ;
 unsigned int XGBE_AN_CL37_MII_CTRL_8BIT ;
 unsigned int XGBE_AN_CL37_PCS_MODE_BASEX ;
 unsigned int XGBE_AN_CL37_PCS_MODE_MASK ;
 unsigned int XGBE_AN_CL37_PCS_MODE_SGMII ;
 unsigned int XGBE_AN_CL37_TX_CONFIG_MASK ;


 unsigned int XMDIO_READ (struct xgbe_prv_data*,int ,int ) ;
 int XMDIO_WRITE (struct xgbe_prv_data*,int ,int ,unsigned int) ;
 int link ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,char*) ;
 int stub1 (struct xgbe_prv_data*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static void xgbe_an37_init(struct xgbe_prv_data *pdata)
{
 struct ethtool_link_ksettings lks;
 unsigned int reg;

 pdata->phy_if.phy_impl.an_advertising(pdata, &lks);


 reg = XMDIO_READ(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_ADVERTISE);
 if (XGBE_ADV(&lks, Pause))
  reg |= 0x100;
 else
  reg &= ~0x100;

 if (XGBE_ADV(&lks, Asym_Pause))
  reg |= 0x80;
 else
  reg &= ~0x80;


 reg |= XGBE_AN_CL37_FD_MASK;
 reg &= ~XGBE_AN_CL37_HD_MASK;

 XMDIO_WRITE(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_ADVERTISE, reg);


 reg = XMDIO_READ(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_CTRL);
 reg &= ~XGBE_AN_CL37_TX_CONFIG_MASK;
 reg &= ~XGBE_AN_CL37_PCS_MODE_MASK;

 switch (pdata->an_mode) {
 case 129:
  reg |= XGBE_AN_CL37_PCS_MODE_BASEX;
  break;
 case 128:
  reg |= XGBE_AN_CL37_PCS_MODE_SGMII;
  break;
 default:
  break;
 }

 reg |= XGBE_AN_CL37_MII_CTRL_8BIT;

 XMDIO_WRITE(pdata, MDIO_MMD_VEND2, MDIO_VEND2_AN_CTRL, reg);

 netif_dbg(pdata, link, pdata->netdev, "CL37 AN (%s) initialized\n",
    (pdata->an_mode == 129) ? "BaseX" : "SGMII");
}
