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
struct hl_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  high_pll; struct goya_device* asic_specific; } ;
struct goya_device {int /*<<< orphan*/  ic_clk; int /*<<< orphan*/  tpc_clk; int /*<<< orphan*/  mme_clk; } ;
typedef  enum hl_pll_frequency { ____Placeholder_hl_pll_frequency } hl_pll_frequency ;

/* Variables and functions */
 int /*<<< orphan*/  GOYA_PLL_FREQ_LOW ; 
 int /*<<< orphan*/  IC_PLL ; 
 int /*<<< orphan*/  MME_PLL ; 
#define  PLL_HIGH 130 
#define  PLL_LAST 129 
#define  PLL_LOW 128 
 int /*<<< orphan*/  TPC_PLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hl_device *hdev, enum hl_pll_frequency freq)
{
	struct goya_device *goya = hdev->asic_specific;

	switch (freq) {
	case PLL_HIGH:
		FUNC1(hdev, MME_PLL, hdev->high_pll);
		FUNC1(hdev, TPC_PLL, hdev->high_pll);
		FUNC1(hdev, IC_PLL, hdev->high_pll);
		break;
	case PLL_LOW:
		FUNC1(hdev, MME_PLL, GOYA_PLL_FREQ_LOW);
		FUNC1(hdev, TPC_PLL, GOYA_PLL_FREQ_LOW);
		FUNC1(hdev, IC_PLL, GOYA_PLL_FREQ_LOW);
		break;
	case PLL_LAST:
		FUNC1(hdev, MME_PLL, goya->mme_clk);
		FUNC1(hdev, TPC_PLL, goya->tpc_clk);
		FUNC1(hdev, IC_PLL, goya->ic_clk);
		break;
	default:
		FUNC0(hdev->dev, "unknown frequency setting\n");
	}
}