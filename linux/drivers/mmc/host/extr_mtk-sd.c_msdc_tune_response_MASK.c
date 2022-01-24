#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct msdc_host {int base; int hs200_cmd_int_delay; int /*<<< orphan*/  dev; TYPE_2__* dev_comp; } ;
struct msdc_delay_phase {int maxlen; scalar_t__ start; int final_phase; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {scalar_t__ timing; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct TYPE_4__ {int pad_tune_reg; scalar_t__ async_fifo; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ MMC_TIMING_MMC_HS200 ; 
 scalar_t__ MMC_TIMING_UHS_SDR104 ; 
 int MSDC_IOCON ; 
 int /*<<< orphan*/  MSDC_IOCON_RSPL ; 
 int /*<<< orphan*/  MSDC_PAD_TUNE_CMDRRDLY ; 
 int PAD_DELAY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct msdc_delay_phase FUNC1 (struct msdc_host*,int) ; 
 int FUNC2 (int,int) ; 
 struct msdc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdc_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct mmc_host *mmc, u32 opcode)
{
	struct msdc_host *host = FUNC3(mmc);
	u32 rise_delay = 0, fall_delay = 0;
	struct msdc_delay_phase final_rise_delay, final_fall_delay = { 0,};
	struct msdc_delay_phase internal_delay_phase;
	u8 final_delay, final_maxlen;
	u32 internal_delay = 0;
	u32 tune_reg = host->dev_comp->pad_tune_reg;
	int cmd_err;
	int i, j;

	if (mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
	    mmc->ios.timing == MMC_TIMING_UHS_SDR104)
		FUNC8(host->base + tune_reg,
			      MSDC_PAD_TUNE_CMDRRDLY,
			      host->hs200_cmd_int_delay);

	FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_RSPL);
	for (i = 0 ; i < PAD_DELAY_MAX; i++) {
		FUNC5(host, i);
		/*
		 * Using the same parameters, it may sometimes pass the test,
		 * but sometimes it may fail. To make sure the parameters are
		 * more stable, we test each set of parameters 3 times.
		 */
		for (j = 0; j < 3; j++) {
			FUNC4(mmc, opcode, &cmd_err);
			if (!cmd_err) {
				rise_delay |= (1 << i);
			} else {
				rise_delay &= ~(1 << i);
				break;
			}
		}
	}
	final_rise_delay = FUNC1(host, rise_delay);
	/* if rising edge has enough margin, then do not scan falling edge */
	if (final_rise_delay.maxlen >= 12 ||
	    (final_rise_delay.start == 0 && final_rise_delay.maxlen >= 4))
		goto skip_fall;

	FUNC7(host->base + MSDC_IOCON, MSDC_IOCON_RSPL);
	for (i = 0; i < PAD_DELAY_MAX; i++) {
		FUNC5(host, i);
		/*
		 * Using the same parameters, it may sometimes pass the test,
		 * but sometimes it may fail. To make sure the parameters are
		 * more stable, we test each set of parameters 3 times.
		 */
		for (j = 0; j < 3; j++) {
			FUNC4(mmc, opcode, &cmd_err);
			if (!cmd_err) {
				fall_delay |= (1 << i);
			} else {
				fall_delay &= ~(1 << i);
				break;
			}
		}
	}
	final_fall_delay = FUNC1(host, fall_delay);

skip_fall:
	final_maxlen = FUNC2(final_rise_delay.maxlen, final_fall_delay.maxlen);
	if (final_fall_delay.maxlen >= 12 && final_fall_delay.start < 4)
		final_maxlen = final_fall_delay.maxlen;
	if (final_maxlen == final_rise_delay.maxlen) {
		FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_RSPL);
		final_delay = final_rise_delay.final_phase;
	} else {
		FUNC7(host->base + MSDC_IOCON, MSDC_IOCON_RSPL);
		final_delay = final_fall_delay.final_phase;
	}
	FUNC5(host, final_delay);

	if (host->dev_comp->async_fifo || host->hs200_cmd_int_delay)
		goto skip_internal;

	for (i = 0; i < PAD_DELAY_MAX; i++) {
		FUNC8(host->base + tune_reg,
			      MSDC_PAD_TUNE_CMDRRDLY, i);
		FUNC4(mmc, opcode, &cmd_err);
		if (!cmd_err)
			internal_delay |= (1 << i);
	}
	FUNC0(host->dev, "Final internal delay: 0x%x\n", internal_delay);
	internal_delay_phase = FUNC1(host, internal_delay);
	FUNC8(host->base + tune_reg, MSDC_PAD_TUNE_CMDRRDLY,
		      internal_delay_phase.final_phase);
skip_internal:
	FUNC0(host->dev, "Final cmd pad delay: %x\n", final_delay);
	return final_delay == 0xff ? -EIO : 0;
}