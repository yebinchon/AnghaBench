
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_host {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int GLI_9750_DRIVING_1_VALUE ;
 int GLI_9750_DRIVING_2_VALUE ;
 int GLI_9750_MISC_RX_INV_VALUE ;
 int GLI_9750_MISC_TX1_DLY_VALUE ;
 int GLI_9750_MISC_TX1_INV_VALUE ;
 int GLI_9750_PLL_TX2_DLY_VALUE ;
 int GLI_9750_PLL_TX2_INV_VALUE ;
 int GLI_9750_SW_CTRL_4_VALUE ;
 int GLI_9750_TUNING_CONTROL_EN_OFF ;
 int GLI_9750_TUNING_CONTROL_EN_ON ;
 int GLI_9750_TUNING_CONTROL_GLITCH_1_VALUE ;
 int GLI_9750_TUNING_CONTROL_GLITCH_2_VALUE ;
 int GLI_9750_TUNING_PARAMETERS_RX_DLY_VALUE ;
 int SDHCI_CTRL_TUNED_CLK ;
 int SDHCI_GLI_9750_DRIVING ;
 int SDHCI_GLI_9750_DRIVING_1 ;
 int SDHCI_GLI_9750_DRIVING_2 ;
 int SDHCI_GLI_9750_MISC ;
 int SDHCI_GLI_9750_MISC_RX_INV ;
 int SDHCI_GLI_9750_MISC_TX1_DLY ;
 int SDHCI_GLI_9750_MISC_TX1_INV ;
 int SDHCI_GLI_9750_PLL ;
 int SDHCI_GLI_9750_PLL_TX2_DLY ;
 int SDHCI_GLI_9750_PLL_TX2_INV ;
 int SDHCI_GLI_9750_SW_CTRL ;
 int SDHCI_GLI_9750_SW_CTRL_4 ;
 int SDHCI_GLI_9750_TUNING_CONTROL ;
 int SDHCI_GLI_9750_TUNING_CONTROL_EN ;
 int SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1 ;
 int SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2 ;
 int SDHCI_GLI_9750_TUNING_PARAMETERS ;
 int SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY ;
 int SDHCI_HOST_CONTROL2 ;
 int gl9750_wt_off (struct sdhci_host*) ;
 int gl9750_wt_on (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void gli_set_9750(struct sdhci_host *host)
{
 u32 driving_value;
 u32 pll_value;
 u32 sw_ctrl_value;
 u32 misc_value;
 u32 parameter_value;
 u32 control_value;
 u16 ctrl2;

 gl9750_wt_on(host);

 driving_value = sdhci_readl(host, SDHCI_GLI_9750_DRIVING);
 pll_value = sdhci_readl(host, SDHCI_GLI_9750_PLL);
 sw_ctrl_value = sdhci_readl(host, SDHCI_GLI_9750_SW_CTRL);
 misc_value = sdhci_readl(host, SDHCI_GLI_9750_MISC);
 parameter_value = sdhci_readl(host, SDHCI_GLI_9750_TUNING_PARAMETERS);
 control_value = sdhci_readl(host, SDHCI_GLI_9750_TUNING_CONTROL);

 driving_value &= ~(SDHCI_GLI_9750_DRIVING_1);
 driving_value &= ~(SDHCI_GLI_9750_DRIVING_2);
 driving_value |= FIELD_PREP(SDHCI_GLI_9750_DRIVING_1,
        GLI_9750_DRIVING_1_VALUE);
 driving_value |= FIELD_PREP(SDHCI_GLI_9750_DRIVING_2,
        GLI_9750_DRIVING_2_VALUE);
 sdhci_writel(host, driving_value, SDHCI_GLI_9750_DRIVING);

 sw_ctrl_value &= ~SDHCI_GLI_9750_SW_CTRL_4;
 sw_ctrl_value |= FIELD_PREP(SDHCI_GLI_9750_SW_CTRL_4,
        GLI_9750_SW_CTRL_4_VALUE);
 sdhci_writel(host, sw_ctrl_value, SDHCI_GLI_9750_SW_CTRL);


 pll_value &= ~SDHCI_GLI_9750_PLL_TX2_INV;
 pll_value &= ~SDHCI_GLI_9750_PLL_TX2_DLY;
 pll_value |= FIELD_PREP(SDHCI_GLI_9750_PLL_TX2_INV,
    GLI_9750_PLL_TX2_INV_VALUE);
 pll_value |= FIELD_PREP(SDHCI_GLI_9750_PLL_TX2_DLY,
    GLI_9750_PLL_TX2_DLY_VALUE);

 misc_value &= ~SDHCI_GLI_9750_MISC_TX1_INV;
 misc_value &= ~SDHCI_GLI_9750_MISC_RX_INV;
 misc_value &= ~SDHCI_GLI_9750_MISC_TX1_DLY;
 misc_value |= FIELD_PREP(SDHCI_GLI_9750_MISC_TX1_INV,
     GLI_9750_MISC_TX1_INV_VALUE);
 misc_value |= FIELD_PREP(SDHCI_GLI_9750_MISC_RX_INV,
     GLI_9750_MISC_RX_INV_VALUE);
 misc_value |= FIELD_PREP(SDHCI_GLI_9750_MISC_TX1_DLY,
     GLI_9750_MISC_TX1_DLY_VALUE);

 parameter_value &= ~SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY;
 parameter_value |= FIELD_PREP(SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY,
          GLI_9750_TUNING_PARAMETERS_RX_DLY_VALUE);

 control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1;
 control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2;
 control_value |= FIELD_PREP(SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1,
        GLI_9750_TUNING_CONTROL_GLITCH_1_VALUE);
 control_value |= FIELD_PREP(SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2,
        GLI_9750_TUNING_CONTROL_GLITCH_2_VALUE);

 sdhci_writel(host, pll_value, SDHCI_GLI_9750_PLL);
 sdhci_writel(host, misc_value, SDHCI_GLI_9750_MISC);


 ctrl2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 ctrl2 &= ~SDHCI_CTRL_TUNED_CLK;
 sdhci_writew(host, ctrl2, SDHCI_HOST_CONTROL2);


 control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_EN;
 control_value |= FIELD_PREP(SDHCI_GLI_9750_TUNING_CONTROL_EN,
        GLI_9750_TUNING_CONTROL_EN_ON);
 sdhci_writel(host, control_value, SDHCI_GLI_9750_TUNING_CONTROL);


 sdhci_writel(host, parameter_value, SDHCI_GLI_9750_TUNING_PARAMETERS);


 control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_EN;
 control_value |= FIELD_PREP(SDHCI_GLI_9750_TUNING_CONTROL_EN,
        GLI_9750_TUNING_CONTROL_EN_OFF);
 sdhci_writel(host, control_value, SDHCI_GLI_9750_TUNING_CONTROL);


 ctrl2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
 ctrl2 &= ~SDHCI_CTRL_TUNED_CLK;
 sdhci_writew(host, ctrl2, SDHCI_HOST_CONTROL2);

 gl9750_wt_off(host);
}
