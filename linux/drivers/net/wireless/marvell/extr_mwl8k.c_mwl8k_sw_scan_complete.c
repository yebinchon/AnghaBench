
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwl8k_priv {int sw_scan_start; int hw; scalar_t__ regs; scalar_t__ channel_time; int ap_fw; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;


 int BBU_AVG_NOISE_VAL ;
 scalar_t__ BBU_RXRDY_CNT_REG ;
 scalar_t__ NOK_CCA_CNT_REG ;
 int ioread32 (scalar_t__) ;
 int mwl8k_cmd_bbp_reg_access (int ,int ,int ,int *) ;

__attribute__((used)) static void mwl8k_sw_scan_complete(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct mwl8k_priv *priv = hw->priv;
 u8 tmp;

 if (!priv->ap_fw)
  return;

 priv->sw_scan_start = 0;


 priv->channel_time = 0;
 ioread32(priv->regs + BBU_RXRDY_CNT_REG);
 ioread32(priv->regs + NOK_CCA_CNT_REG);
 mwl8k_cmd_bbp_reg_access(priv->hw, 0, BBU_AVG_NOISE_VAL, &tmp);
}
