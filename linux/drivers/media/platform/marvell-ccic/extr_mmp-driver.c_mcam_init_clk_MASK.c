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
struct mcam_camera {int /*<<< orphan*/  dev; int /*<<< orphan*/ * clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int NR_MCAM_CLK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** mcam_clks ; 

__attribute__((used)) static void FUNC3(struct mcam_camera *mcam)
{
	unsigned int i;

	for (i = 0; i < NR_MCAM_CLK; i++) {
		if (mcam_clks[i] != NULL) {
			/* Some clks are not necessary on some boards
			 * We still try to run even it fails getting clk
			 */
			mcam->clk[i] = FUNC2(mcam->dev, mcam_clks[i]);
			if (FUNC0(mcam->clk[i]))
				FUNC1(mcam->dev, "Could not get clk: %s\n",
						mcam_clks[i]);
		}
	}
}