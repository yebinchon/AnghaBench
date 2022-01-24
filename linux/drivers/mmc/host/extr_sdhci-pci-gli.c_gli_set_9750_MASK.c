#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLI_9750_DRIVING_1_VALUE ; 
 int /*<<< orphan*/  GLI_9750_DRIVING_2_VALUE ; 
 int /*<<< orphan*/  GLI_9750_MISC_RX_INV_VALUE ; 
 int /*<<< orphan*/  GLI_9750_MISC_TX1_DLY_VALUE ; 
 int /*<<< orphan*/  GLI_9750_MISC_TX1_INV_VALUE ; 
 int /*<<< orphan*/  GLI_9750_PLL_TX2_DLY_VALUE ; 
 int /*<<< orphan*/  GLI_9750_PLL_TX2_INV_VALUE ; 
 int /*<<< orphan*/  GLI_9750_SW_CTRL_4_VALUE ; 
 int /*<<< orphan*/  GLI_9750_TUNING_CONTROL_EN_OFF ; 
 int /*<<< orphan*/  GLI_9750_TUNING_CONTROL_EN_ON ; 
 int /*<<< orphan*/  GLI_9750_TUNING_CONTROL_GLITCH_1_VALUE ; 
 int /*<<< orphan*/  GLI_9750_TUNING_CONTROL_GLITCH_2_VALUE ; 
 int /*<<< orphan*/  GLI_9750_TUNING_PARAMETERS_RX_DLY_VALUE ; 
 int /*<<< orphan*/  SDHCI_CTRL_TUNED_CLK ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_DRIVING ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_DRIVING_1 ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_DRIVING_2 ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_MISC ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_MISC_RX_INV ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_MISC_TX1_DLY ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_MISC_TX1_INV ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_PLL ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_PLL_TX2_DLY ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_PLL_TX2_INV ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_SW_CTRL ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_SW_CTRL_4 ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_TUNING_CONTROL ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_TUNING_CONTROL_EN ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1 ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2 ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_TUNING_PARAMETERS ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sdhci_host *host)
{
	u32 driving_value;
	u32 pll_value;
	u32 sw_ctrl_value;
	u32 misc_value;
	u32 parameter_value;
	u32 control_value;
	u16 ctrl2;

	FUNC2(host);

	driving_value = FUNC3(host, SDHCI_GLI_9750_DRIVING);
	pll_value = FUNC3(host, SDHCI_GLI_9750_PLL);
	sw_ctrl_value = FUNC3(host, SDHCI_GLI_9750_SW_CTRL);
	misc_value = FUNC3(host, SDHCI_GLI_9750_MISC);
	parameter_value = FUNC3(host, SDHCI_GLI_9750_TUNING_PARAMETERS);
	control_value = FUNC3(host, SDHCI_GLI_9750_TUNING_CONTROL);

	driving_value &= ~(SDHCI_GLI_9750_DRIVING_1);
	driving_value &= ~(SDHCI_GLI_9750_DRIVING_2);
	driving_value |= FUNC0(SDHCI_GLI_9750_DRIVING_1,
				    GLI_9750_DRIVING_1_VALUE);
	driving_value |= FUNC0(SDHCI_GLI_9750_DRIVING_2,
				    GLI_9750_DRIVING_2_VALUE);
	FUNC5(host, driving_value, SDHCI_GLI_9750_DRIVING);

	sw_ctrl_value &= ~SDHCI_GLI_9750_SW_CTRL_4;
	sw_ctrl_value |= FUNC0(SDHCI_GLI_9750_SW_CTRL_4,
				    GLI_9750_SW_CTRL_4_VALUE);
	FUNC5(host, sw_ctrl_value, SDHCI_GLI_9750_SW_CTRL);

	/* reset the tuning flow after reinit and before starting tuning */
	pll_value &= ~SDHCI_GLI_9750_PLL_TX2_INV;
	pll_value &= ~SDHCI_GLI_9750_PLL_TX2_DLY;
	pll_value |= FUNC0(SDHCI_GLI_9750_PLL_TX2_INV,
				GLI_9750_PLL_TX2_INV_VALUE);
	pll_value |= FUNC0(SDHCI_GLI_9750_PLL_TX2_DLY,
				GLI_9750_PLL_TX2_DLY_VALUE);

	misc_value &= ~SDHCI_GLI_9750_MISC_TX1_INV;
	misc_value &= ~SDHCI_GLI_9750_MISC_RX_INV;
	misc_value &= ~SDHCI_GLI_9750_MISC_TX1_DLY;
	misc_value |= FUNC0(SDHCI_GLI_9750_MISC_TX1_INV,
				 GLI_9750_MISC_TX1_INV_VALUE);
	misc_value |= FUNC0(SDHCI_GLI_9750_MISC_RX_INV,
				 GLI_9750_MISC_RX_INV_VALUE);
	misc_value |= FUNC0(SDHCI_GLI_9750_MISC_TX1_DLY,
				 GLI_9750_MISC_TX1_DLY_VALUE);

	parameter_value &= ~SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY;
	parameter_value |= FUNC0(SDHCI_GLI_9750_TUNING_PARAMETERS_RX_DLY,
				      GLI_9750_TUNING_PARAMETERS_RX_DLY_VALUE);

	control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1;
	control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2;
	control_value |= FUNC0(SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_1,
				    GLI_9750_TUNING_CONTROL_GLITCH_1_VALUE);
	control_value |= FUNC0(SDHCI_GLI_9750_TUNING_CONTROL_GLITCH_2,
				    GLI_9750_TUNING_CONTROL_GLITCH_2_VALUE);

	FUNC5(host, pll_value, SDHCI_GLI_9750_PLL);
	FUNC5(host, misc_value, SDHCI_GLI_9750_MISC);

	/* disable tuned clk */
	ctrl2 = FUNC4(host, SDHCI_HOST_CONTROL2);
	ctrl2 &= ~SDHCI_CTRL_TUNED_CLK;
	FUNC6(host, ctrl2, SDHCI_HOST_CONTROL2);

	/* enable tuning parameters control */
	control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_EN;
	control_value |= FUNC0(SDHCI_GLI_9750_TUNING_CONTROL_EN,
				    GLI_9750_TUNING_CONTROL_EN_ON);
	FUNC5(host, control_value, SDHCI_GLI_9750_TUNING_CONTROL);

	/* write tuning parameters */
	FUNC5(host, parameter_value, SDHCI_GLI_9750_TUNING_PARAMETERS);

	/* disable tuning parameters control */
	control_value &= ~SDHCI_GLI_9750_TUNING_CONTROL_EN;
	control_value |= FUNC0(SDHCI_GLI_9750_TUNING_CONTROL_EN,
				    GLI_9750_TUNING_CONTROL_EN_OFF);
	FUNC5(host, control_value, SDHCI_GLI_9750_TUNING_CONTROL);

	/* clear tuned clk */
	ctrl2 = FUNC4(host, SDHCI_HOST_CONTROL2);
	ctrl2 &= ~SDHCI_CTRL_TUNED_CLK;
	FUNC6(host, ctrl2, SDHCI_HOST_CONTROL2);

	FUNC1(host);
}