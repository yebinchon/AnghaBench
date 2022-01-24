#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ipq806x_gmac {int phy_mode; int /*<<< orphan*/  nss_common; int /*<<< orphan*/  id; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NSS_COMMON_CLK_DIV0 ; 
 int NSS_COMMON_CLK_DIV_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NSS_COMMON_CLK_GATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  PHY_INTERFACE_MODE_RGMII 129 
#define  PHY_INTERFACE_MODE_SGMII 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipq806x_gmac*,unsigned int) ; 
 int FUNC7 (struct ipq806x_gmac*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct ipq806x_gmac *gmac, unsigned int speed)
{
	uint32_t clk_bits, val;
	int div;

	switch (gmac->phy_mode) {
	case PHY_INTERFACE_MODE_RGMII:
		div = FUNC6(gmac, speed);
		clk_bits = FUNC3(gmac->id) |
			   FUNC4(gmac->id);
		break;

	case PHY_INTERFACE_MODE_SGMII:
		div = FUNC7(gmac, speed);
		clk_bits = FUNC1(gmac->id) |
			   FUNC2(gmac->id);
		break;

	default:
		FUNC5(&gmac->pdev->dev, "Unsupported PHY mode: \"%s\"\n",
			FUNC8(gmac->phy_mode));
		return -EINVAL;
	}

	/* Disable the clocks */
	FUNC9(gmac->nss_common, NSS_COMMON_CLK_GATE, &val);
	val &= ~clk_bits;
	FUNC10(gmac->nss_common, NSS_COMMON_CLK_GATE, val);

	/* Set the divider */
	FUNC9(gmac->nss_common, NSS_COMMON_CLK_DIV0, &val);
	val &= ~(NSS_COMMON_CLK_DIV_MASK
		 << FUNC0(gmac->id));
	val |= div << FUNC0(gmac->id);
	FUNC10(gmac->nss_common, NSS_COMMON_CLK_DIV0, val);

	/* Enable the clock back */
	FUNC9(gmac->nss_common, NSS_COMMON_CLK_GATE, &val);
	val |= clk_bits;
	FUNC10(gmac->nss_common, NSS_COMMON_CLK_GATE, val);

	return 0;
}