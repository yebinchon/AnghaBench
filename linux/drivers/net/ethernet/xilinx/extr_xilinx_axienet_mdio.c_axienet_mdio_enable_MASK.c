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
typedef  int u32 ;
struct device_node {int dummy; } ;
struct axienet_local {int /*<<< orphan*/  ndev; scalar_t__ clk; } ;

/* Variables and functions */
 int DEFAULT_HOST_CLOCK ; 
 int MAX_MDIO_FREQ ; 
 int XAE_MDIO_MC_MDIOEN_MASK ; 
 int /*<<< orphan*/  XAE_MDIO_MC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct axienet_local*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct axienet_local*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (struct device_node*,char*,int*) ; 

int FUNC9(struct axienet_local *lp)
{
	u32 clk_div, host_clock;

	if (lp->clk) {
		host_clock = FUNC2(lp->clk);
	} else {
		struct device_node *np1;

		/* Legacy fallback: detect CPU clock frequency and use as AXI
		 * bus clock frequency. This only works on certain platforms.
		 */
		np1 = FUNC6(NULL, "cpu");
		if (!np1) {
			FUNC5(lp->ndev, "Could not find CPU device node.\n");
			host_clock = DEFAULT_HOST_CLOCK;
		} else {
			int ret = FUNC8(np1, "clock-frequency",
						       &host_clock);
			if (ret) {
				FUNC5(lp->ndev, "CPU clock-frequency property not found.\n");
				host_clock = DEFAULT_HOST_CLOCK;
			}
			FUNC7(np1);
		}
		FUNC4(lp->ndev, "Setting assumed host clock to %u\n",
			    host_clock);
	}

	/* clk_div can be calculated by deriving it from the equation:
	 * fMDIO = fHOST / ((1 + clk_div) * 2)
	 *
	 * Where fMDIO <= 2500000, so we get:
	 * fHOST / ((1 + clk_div) * 2) <= 2500000
	 *
	 * Then we get:
	 * 1 / ((1 + clk_div) * 2) <= (2500000 / fHOST)
	 *
	 * Then we get:
	 * 1 / (1 + clk_div) <= ((2500000 * 2) / fHOST)
	 *
	 * Then we get:
	 * 1 / (1 + clk_div) <= (5000000 / fHOST)
	 *
	 * So:
	 * (1 + clk_div) >= (fHOST / 5000000)
	 *
	 * And finally:
	 * clk_div >= (fHOST / 5000000) - 1
	 *
	 * fHOST can be read from the flattened device tree as property
	 * "clock-frequency" from the CPU
	 */

	clk_div = (host_clock / (MAX_MDIO_FREQ * 2)) - 1;
	/* If there is any remainder from the division of
	 * fHOST / (MAX_MDIO_FREQ * 2), then we need to add
	 * 1 to the clock divisor or we will surely be above 2.5 MHz
	 */
	if (host_clock % (MAX_MDIO_FREQ * 2))
		clk_div++;

	FUNC3(lp->ndev,
		   "Setting MDIO clock divisor to %u/%u Hz host clock.\n",
		   clk_div, host_clock);

	FUNC0(lp, XAE_MDIO_MC_OFFSET, clk_div | XAE_MDIO_MC_MDIOEN_MASK);

	return FUNC1(lp);
}