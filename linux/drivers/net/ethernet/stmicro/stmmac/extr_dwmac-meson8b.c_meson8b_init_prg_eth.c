
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct meson8b_dwmac {int phy_mode; int tx_delay_ns; int dev; int rgmii_tx_clk; } ;


 int EINVAL ;





 int PRG_ETH0 ;
 int PRG_ETH0_INVERTED_RMII_CLK ;
 int PRG_ETH0_TXDLY_MASK ;
 int PRG_ETH0_TXDLY_SHIFT ;
 int PRG_ETH0_TX_AND_PHY_REF_CLK ;
 int clk_disable_unprepare ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,...) ;
 int devm_add_action_or_reset (int ,void (*) (void*),int ) ;
 int meson8b_dwmac_mask_bits (struct meson8b_dwmac*,int ,int,int) ;
 int phy_modes (int) ;

__attribute__((used)) static int meson8b_init_prg_eth(struct meson8b_dwmac *dwmac)
{
 int ret;
 u8 tx_dly_val = 0;

 switch (dwmac->phy_mode) {
 case 132:
 case 130:




  tx_dly_val = dwmac->tx_delay_ns >> 1;


 case 131:
 case 129:

  meson8b_dwmac_mask_bits(dwmac, PRG_ETH0,
     PRG_ETH0_INVERTED_RMII_CLK, 0);

  meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
     tx_dly_val << PRG_ETH0_TXDLY_SHIFT);






  ret = clk_set_rate(dwmac->rgmii_tx_clk, 125 * 1000 * 1000);
  if (ret) {
   dev_err(dwmac->dev,
    "failed to set RGMII TX clock\n");
   return ret;
  }

  ret = clk_prepare_enable(dwmac->rgmii_tx_clk);
  if (ret) {
   dev_err(dwmac->dev,
    "failed to enable the RGMII TX clock\n");
   return ret;
  }

  devm_add_action_or_reset(dwmac->dev,
     (void(*)(void *))clk_disable_unprepare,
     dwmac->rgmii_tx_clk);
  break;

 case 128:

  meson8b_dwmac_mask_bits(dwmac, PRG_ETH0,
     PRG_ETH0_INVERTED_RMII_CLK,
     PRG_ETH0_INVERTED_RMII_CLK);


  meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TXDLY_MASK,
     0);

  break;

 default:
  dev_err(dwmac->dev, "unsupported phy-mode %s\n",
   phy_modes(dwmac->phy_mode));
  return -EINVAL;
 }


 meson8b_dwmac_mask_bits(dwmac, PRG_ETH0, PRG_ETH0_TX_AND_PHY_REF_CLK,
    PRG_ETH0_TX_AND_PHY_REF_CLK);

 return 0;
}
