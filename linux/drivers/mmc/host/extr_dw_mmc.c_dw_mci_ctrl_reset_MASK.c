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
struct dw_mci {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 scalar_t__ SDMMC_CTRL ; 
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct dw_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_mci*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static bool FUNC4(struct dw_mci *host, u32 reset)
{
	u32 ctrl;

	ctrl = FUNC1(host, CTRL);
	ctrl |= reset;
	FUNC2(host, CTRL, ctrl);

	/* wait till resets clear */
	if (FUNC3(host->regs + SDMMC_CTRL, ctrl,
				      !(ctrl & reset),
				      1, 500 * USEC_PER_MSEC)) {
		FUNC0(host->dev,
			"Timeout resetting block (ctrl reset %#x)\n",
			ctrl & reset);
		return false;
	}

	return true;
}