
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ipq806x_gmac {int phy_mode; int nss_common; int id; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int NSS_COMMON_CLK_DIV0 ;
 int NSS_COMMON_CLK_DIV_MASK ;
 int NSS_COMMON_CLK_DIV_OFFSET (int ) ;
 int NSS_COMMON_CLK_GATE ;
 int NSS_COMMON_CLK_GATE_GMII_RX_EN (int ) ;
 int NSS_COMMON_CLK_GATE_GMII_TX_EN (int ) ;
 int NSS_COMMON_CLK_GATE_RGMII_RX_EN (int ) ;
 int NSS_COMMON_CLK_GATE_RGMII_TX_EN (int ) ;


 int dev_err (int *,char*,int ) ;
 int get_clk_div_rgmii (struct ipq806x_gmac*,unsigned int) ;
 int get_clk_div_sgmii (struct ipq806x_gmac*,unsigned int) ;
 int phy_modes (int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ipq806x_gmac_set_speed(struct ipq806x_gmac *gmac, unsigned int speed)
{
 uint32_t clk_bits, val;
 int div;

 switch (gmac->phy_mode) {
 case 129:
  div = get_clk_div_rgmii(gmac, speed);
  clk_bits = NSS_COMMON_CLK_GATE_RGMII_RX_EN(gmac->id) |
      NSS_COMMON_CLK_GATE_RGMII_TX_EN(gmac->id);
  break;

 case 128:
  div = get_clk_div_sgmii(gmac, speed);
  clk_bits = NSS_COMMON_CLK_GATE_GMII_RX_EN(gmac->id) |
      NSS_COMMON_CLK_GATE_GMII_TX_EN(gmac->id);
  break;

 default:
  dev_err(&gmac->pdev->dev, "Unsupported PHY mode: \"%s\"\n",
   phy_modes(gmac->phy_mode));
  return -EINVAL;
 }


 regmap_read(gmac->nss_common, NSS_COMMON_CLK_GATE, &val);
 val &= ~clk_bits;
 regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);


 regmap_read(gmac->nss_common, NSS_COMMON_CLK_DIV0, &val);
 val &= ~(NSS_COMMON_CLK_DIV_MASK
   << NSS_COMMON_CLK_DIV_OFFSET(gmac->id));
 val |= div << NSS_COMMON_CLK_DIV_OFFSET(gmac->id);
 regmap_write(gmac->nss_common, NSS_COMMON_CLK_DIV0, val);


 regmap_read(gmac->nss_common, NSS_COMMON_CLK_GATE, &val);
 val |= clk_bits;
 regmap_write(gmac->nss_common, NSS_COMMON_CLK_GATE, val);

 return 0;
}
