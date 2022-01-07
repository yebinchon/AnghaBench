
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_resources {int mac; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct plat_stmmacenet_data {int has_gmac; int fix_mac_speed; struct ipq806x_gmac* bsp_priv; } ;
struct ipq806x_gmac {int phy_mode; int id; int qsgmii_csr; int nss_common; struct platform_device* pdev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct plat_stmmacenet_data*) ;
 int NSS_COMMON_CLK_GATE ;
 int NSS_COMMON_CLK_GATE_PTP_EN (int ) ;
 int NSS_COMMON_CLK_SRC_CTRL ;
 int NSS_COMMON_CLK_SRC_CTRL_OFFSET (int ) ;
 int NSS_COMMON_CLK_SRC_CTRL_RGMII (int ) ;
 int NSS_COMMON_CLK_SRC_CTRL_SGMII (int ) ;
 int NSS_COMMON_GMAC_CTL (int ) ;
 int NSS_COMMON_GMAC_CTL_CSYS_REQ ;
 int NSS_COMMON_GMAC_CTL_IFG_LIMIT_OFFSET ;
 int NSS_COMMON_GMAC_CTL_IFG_OFFSET ;
 int NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL ;


 int PTR_ERR (struct plat_stmmacenet_data*) ;
 int QSGMII_PCS_CAL_LCKDT_CTL ;
 int QSGMII_PCS_CAL_LCKDT_CTL_RST ;
 int QSGMII_PHY_CDR_EN ;
 int QSGMII_PHY_CDR_PI_SLEW_OFFSET ;
 int QSGMII_PHY_PHASE_LOOP_GAIN_OFFSET ;
 int QSGMII_PHY_QSGMII_EN ;
 int QSGMII_PHY_RX_DC_BIAS_OFFSET ;
 int QSGMII_PHY_RX_FRONT_EN ;
 int QSGMII_PHY_RX_INPUT_EQU_OFFSET ;
 int QSGMII_PHY_RX_SIGNAL_DETECT_EN ;
 int QSGMII_PHY_SGMII_CTL (int ) ;
 int QSGMII_PHY_TX_DRIVER_EN ;
 int QSGMII_PHY_TX_DRV_AMP_OFFSET ;
 int dev_err (struct device*,char*,...) ;
 struct ipq806x_gmac* devm_kzalloc (struct device*,int,int ) ;
 int ipq806x_gmac_fix_mac_speed ;
 int ipq806x_gmac_of_parse (struct ipq806x_gmac*) ;
 int phy_modes (int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int stmmac_dvr_probe (struct device*,struct plat_stmmacenet_data*,struct stmmac_resources*) ;
 int stmmac_get_platform_resources (struct platform_device*,struct stmmac_resources*) ;
 struct plat_stmmacenet_data* stmmac_probe_config_dt (struct platform_device*,int *) ;
 int stmmac_remove_config_dt (struct platform_device*,struct plat_stmmacenet_data*) ;

__attribute__((used)) static int ipq806x_gmac_probe(struct platform_device *pdev)
{
 struct plat_stmmacenet_data *plat_dat;
 struct stmmac_resources stmmac_res;
 struct device *dev = &pdev->dev;
 struct ipq806x_gmac *gmac;
 int val;
 int err;

 val = stmmac_get_platform_resources(pdev, &stmmac_res);
 if (val)
  return val;

 plat_dat = stmmac_probe_config_dt(pdev, &stmmac_res.mac);
 if (IS_ERR(plat_dat))
  return PTR_ERR(plat_dat);

 gmac = devm_kzalloc(dev, sizeof(*gmac), GFP_KERNEL);
 if (!gmac) {
  err = -ENOMEM;
  goto err_remove_config_dt;
 }

 gmac->pdev = pdev;

 err = ipq806x_gmac_of_parse(gmac);
 if (err) {
  dev_err(dev, "device tree parsing error\n");
  goto err_remove_config_dt;
 }

 regmap_write(gmac->qsgmii_csr, QSGMII_PCS_CAL_LCKDT_CTL,
       QSGMII_PCS_CAL_LCKDT_CTL_RST);


 val = 12 << NSS_COMMON_GMAC_CTL_IFG_OFFSET |
       12 << NSS_COMMON_GMAC_CTL_IFG_LIMIT_OFFSET;

 val |= NSS_COMMON_GMAC_CTL_CSYS_REQ;
 switch (gmac->phy_mode) {
 case 129:
  val |= NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL;
  break;
 case 128:
  val &= ~NSS_COMMON_GMAC_CTL_PHY_IFACE_SEL;
  break;
 default:
  dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
   phy_modes(gmac->phy_mode));
  err = -EINVAL;
  goto err_remove_config_dt;
 }
 regmap_write(gmac->nss_common, NSS_COMMON_GMAC_CTL(gmac->id), val);


 regmap_read(gmac->nss_common, NSS_COMMON_CLK_SRC_CTRL, &val);
 val &= ~(1 << NSS_COMMON_CLK_SRC_CTRL_OFFSET(gmac->id));
 switch (gmac->phy_mode) {
 case 129:
  val |= NSS_COMMON_CLK_SRC_CTRL_RGMII(gmac->id) <<
   NSS_COMMON_CLK_SRC_CTRL_OFFSET(gmac->id);
  break;
 case 128:
  val |= NSS_COMMON_CLK_SRC_CTRL_SGMII(gmac->id) <<
   NSS_COMMON_CLK_SRC_CTRL_OFFSET(gmac->id);
  break;
 default:
  dev_err(&pdev->dev, "Unsupported PHY mode: \"%s\"\n",
   phy_modes(gmac->phy_mode));
  err = -EINVAL;
  goto err_remove_config_dt;
 }
 regmap_write(gmac->nss_common, NSS_COMMON_CLK_SRC_CTRL, val);


 regmap_read(gmac->nss_common, NSS_COMMON_CLK_GATE, &val);
 val |= NSS_COMMON_CLK_GATE_PTP_EN(gmac->id);
 regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);

 if (gmac->phy_mode == 128) {
  regmap_write(gmac->qsgmii_csr, QSGMII_PHY_SGMII_CTL(gmac->id),
        QSGMII_PHY_CDR_EN |
        QSGMII_PHY_RX_FRONT_EN |
        QSGMII_PHY_RX_SIGNAL_DETECT_EN |
        QSGMII_PHY_TX_DRIVER_EN |
        QSGMII_PHY_QSGMII_EN |
        0x4ul << QSGMII_PHY_PHASE_LOOP_GAIN_OFFSET |
        0x3ul << QSGMII_PHY_RX_DC_BIAS_OFFSET |
        0x1ul << QSGMII_PHY_RX_INPUT_EQU_OFFSET |
        0x2ul << QSGMII_PHY_CDR_PI_SLEW_OFFSET |
        0xCul << QSGMII_PHY_TX_DRV_AMP_OFFSET);
 }

 plat_dat->has_gmac = 1;
 plat_dat->bsp_priv = gmac;
 plat_dat->fix_mac_speed = ipq806x_gmac_fix_mac_speed;

 err = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 if (err)
  goto err_remove_config_dt;

 return 0;

err_remove_config_dt:
 stmmac_remove_config_dt(pdev, plat_dat);

 return err;
}
