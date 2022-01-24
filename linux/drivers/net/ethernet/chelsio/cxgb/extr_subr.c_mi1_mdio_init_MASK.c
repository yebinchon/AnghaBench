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
struct board_info {int clock_elmer0; int mdio_mdc; int caps; int /*<<< orphan*/  mdio_mdien; int /*<<< orphan*/  mdio_mdiinv; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_PORT0_MI1_CFG ; 
 int F_MI1_PREAMBLE_ENABLE ; 
 int SUPPORTED_10000baseT_Full ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(adapter_t *adapter, const struct board_info *bi)
{
	u32 clkdiv = bi->clock_elmer0 / (2 * bi->mdio_mdc) - 1;
	u32 val = F_MI1_PREAMBLE_ENABLE | FUNC2(bi->mdio_mdiinv) |
		FUNC1(bi->mdio_mdien) | FUNC0(clkdiv);

	if (!(bi->caps & SUPPORTED_10000baseT_Full))
		val |= FUNC3(1);
	FUNC4(adapter, A_ELMER0_PORT0_MI1_CFG, val);
}