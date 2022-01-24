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
struct xsdfec_clks {int /*<<< orphan*/  axi_clk; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  din_clk; int /*<<< orphan*/  din_words_clk; int /*<<< orphan*/  dout_clk; int /*<<< orphan*/  dout_words_clk; int /*<<< orphan*/  ctrl_clk; int /*<<< orphan*/  status_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct xsdfec_clks *clks)
{
	FUNC0(clks->status_clk);
	FUNC0(clks->ctrl_clk);
	FUNC0(clks->dout_words_clk);
	FUNC0(clks->dout_clk);
	FUNC0(clks->din_words_clk);
	FUNC0(clks->din_clk);
	FUNC0(clks->core_clk);
	FUNC0(clks->axi_clk);
}