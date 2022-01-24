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
struct mxic_nand_ctlr {int /*<<< orphan*/  send_dly_clk; int /*<<< orphan*/  send_clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mxic_nand_ctlr*,int) ; 

__attribute__((used)) static int FUNC3(struct mxic_nand_ctlr *nfc, unsigned long freq)
{
	int ret;

	ret = FUNC1(nfc->send_clk, freq);
	if (ret)
		return ret;

	ret = FUNC1(nfc->send_dly_clk, freq);
	if (ret)
		return ret;

	/*
	 * A constant delay range from 0x0 ~ 0x1F for input delay,
	 * the unit is 78 ps, the max input delay is 2.418 ns.
	 */
	FUNC2(nfc, 0xf);

	/*
	 * Phase degree = 360 * freq * output-delay
	 * where output-delay is a constant value 1 ns in FPGA.
	 *
	 * Get Phase degree = 360 * freq * 1 ns
	 *                  = 360 * freq * 1 sec / 1000000000
	 *                  = 9 * freq / 25000000
	 */
	ret = FUNC0(nfc->send_dly_clk, 9 * freq / 25000000);
	if (ret)
		return ret;

	return 0;
}