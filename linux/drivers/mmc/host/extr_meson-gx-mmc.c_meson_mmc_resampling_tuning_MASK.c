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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_host {scalar_t__ doing_retune; } ;
struct meson_host {TYPE_1__* data; scalar_t__ regs; int /*<<< orphan*/  mmc_clk; int /*<<< orphan*/  mux_clk; } ;
struct TYPE_2__ {scalar_t__ adjust; } ;

/* Variables and functions */
 unsigned int ADJUST_ADJ_DELAY_MASK ; 
 unsigned int ADJUST_ADJ_EN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmc_host*) ; 
 struct meson_host* FUNC7 (struct mmc_host*) ; 
 int FUNC8 (struct mmc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct mmc_host *mmc, u32 opcode)
{
	struct meson_host *host = FUNC7(mmc);
	unsigned int val, dly, max_dly, i;
	int ret;

	/* Resampling is done using the source clock */
	max_dly = FUNC0(FUNC3(host->mux_clk),
			       FUNC3(host->mmc_clk));

	val = FUNC9(host->regs + host->data->adjust);
	val |= ADJUST_ADJ_EN;
	FUNC10(val, host->regs + host->data->adjust);

	if (mmc->doing_retune)
		dly = FUNC1(ADJUST_ADJ_DELAY_MASK, val) + 1;
	else
		dly = 0;

	for (i = 0; i < max_dly; i++) {
		val &= ~ADJUST_ADJ_DELAY_MASK;
		val |= FUNC2(ADJUST_ADJ_DELAY_MASK, (dly + i) % max_dly);
		FUNC10(val, host->regs + host->data->adjust);

		ret = FUNC8(mmc, opcode, NULL);
		if (!ret) {
			FUNC4(FUNC6(mmc), "resampling delay: %u\n",
				(dly + i) % max_dly);
			return 0;
		}
	}

	FUNC5(host);
	return -EIO;
}