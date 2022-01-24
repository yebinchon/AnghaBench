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
typedef  int u8 ;
typedef  int u32 ;
struct msdc_host {int /*<<< orphan*/  dev; scalar_t__ base; int /*<<< orphan*/  latch_ck; } ;
struct msdc_delay_phase {int maxlen; scalar_t__ start; int final_phase; int /*<<< orphan*/  member_0; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MSDC_INT_DAT_LATCH_CK_SEL ; 
 scalar_t__ MSDC_IOCON ; 
 int /*<<< orphan*/  MSDC_IOCON_DSPL ; 
 int /*<<< orphan*/  MSDC_IOCON_W_DSPL ; 
 scalar_t__ MSDC_PATCH_BIT ; 
 int PAD_DELAY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct msdc_delay_phase FUNC1 (struct msdc_host*,int) ; 
 int FUNC2 (int,int) ; 
 struct msdc_host* FUNC3 (struct mmc_host*) ; 
 int FUNC4 (struct mmc_host*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct msdc_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mmc_host *mmc, u32 opcode)
{
	struct msdc_host *host = FUNC3(mmc);
	u32 rise_delay = 0, fall_delay = 0;
	struct msdc_delay_phase final_rise_delay, final_fall_delay = { 0,};
	u8 final_delay, final_maxlen;
	int i, ret;

	FUNC8(host->base + MSDC_PATCH_BIT, MSDC_INT_DAT_LATCH_CK_SEL,
		      host->latch_ck);
	FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
	FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
	for (i = 0 ; i < PAD_DELAY_MAX; i++) {
		FUNC5(host, i);
		ret = FUNC4(mmc, opcode, NULL);
		if (!ret)
			rise_delay |= (1 << i);
	}
	final_rise_delay = FUNC1(host, rise_delay);
	/* if rising edge has enough margin, then do not scan falling edge */
	if (final_rise_delay.maxlen >= 12 ||
	    (final_rise_delay.start == 0 && final_rise_delay.maxlen >= 4))
		goto skip_fall;

	FUNC7(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
	FUNC7(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
	for (i = 0; i < PAD_DELAY_MAX; i++) {
		FUNC5(host, i);
		ret = FUNC4(mmc, opcode, NULL);
		if (!ret)
			fall_delay |= (1 << i);
	}
	final_fall_delay = FUNC1(host, fall_delay);

skip_fall:
	final_maxlen = FUNC2(final_rise_delay.maxlen, final_fall_delay.maxlen);
	if (final_maxlen == final_rise_delay.maxlen) {
		FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
		FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
		final_delay = final_rise_delay.final_phase;
	} else {
		FUNC7(host->base + MSDC_IOCON, MSDC_IOCON_DSPL);
		FUNC7(host->base + MSDC_IOCON, MSDC_IOCON_W_DSPL);
		final_delay = final_fall_delay.final_phase;
	}
	FUNC5(host, final_delay);

	FUNC0(host->dev, "Final data pad delay: %x\n", final_delay);
	return final_delay == 0xff ? -EIO : 0;
}