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
typedef  unsigned int u32 ;
struct tegra_nand_controller {scalar_t__ regs; int /*<<< orphan*/  clk; } ;
struct nand_sdr_timings {int tCS_min; int tCH_min; int tALS_min; int tALH_min; int tRP_min; int tREA_max; int tWB_max; int tWHR_min; int tWH_min; int tWP_min; int tREH_min; int tADL_min; int /*<<< orphan*/  tRC_min; int /*<<< orphan*/  tRR_min; int /*<<< orphan*/  tAR_min; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 scalar_t__ TIMING_1 ; 
 scalar_t__ TIMING_2 ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct tegra_nand_controller *ctrl,
				    const struct nand_sdr_timings *timings)
{
	/*
	 * The period (and all other timings in this function) is in ps,
	 * so need to take care here to avoid integer overflows.
	 */
	unsigned int rate = FUNC12(ctrl->clk) / 1000000;
	unsigned int period = FUNC0(1000000, rate);
	u32 val, reg = 0;

	val = FUNC0(FUNC14(timings->tAR_min, timings->tRR_min,
				timings->tRC_min), period);
	reg |= FUNC3(FUNC1(val, 3));

	val = FUNC0(FUNC13(FUNC13(timings->tCS_min, timings->tCH_min),
			       FUNC13(timings->tALS_min, timings->tALH_min)),
			   period);
	reg |= FUNC4(FUNC1(val, 2));

	val = FUNC0(FUNC13(timings->tRP_min, timings->tREA_max) + 6000,
			   period);
	reg |= FUNC6(FUNC1(val, 1)) | FUNC7(FUNC1(val, 1));

	reg |= FUNC8(FUNC1(FUNC0(timings->tWB_max, period), 1));
	reg |= FUNC10(FUNC1(FUNC0(timings->tWHR_min, period), 1));
	reg |= FUNC9(FUNC1(FUNC0(timings->tWH_min, period), 1));
	reg |= FUNC11(FUNC1(FUNC0(timings->tWP_min, period), 1));
	reg |= FUNC5(FUNC1(FUNC0(timings->tREH_min, period), 1));

	FUNC15(reg, ctrl->regs + TIMING_1);

	val = FUNC0(timings->tADL_min, period);
	reg = FUNC2(FUNC1(val, 3));

	FUNC15(reg, ctrl->regs + TIMING_2);
}