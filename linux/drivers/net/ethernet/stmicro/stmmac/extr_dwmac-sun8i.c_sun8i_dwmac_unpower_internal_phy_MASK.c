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
struct sunxi_priv_data {int internal_phy_powered; int /*<<< orphan*/  rst_ephy; int /*<<< orphan*/  ephy_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sunxi_priv_data *gmac)
{
	if (!gmac->internal_phy_powered)
		return 0;

	FUNC0(gmac->ephy_clk);
	FUNC1(gmac->rst_ephy);
	gmac->internal_phy_powered = false;
	return 0;
}