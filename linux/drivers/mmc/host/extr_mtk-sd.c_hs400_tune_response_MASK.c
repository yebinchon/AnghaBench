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
typedef  int u8 ;
typedef  int u32 ;
struct msdc_host {int hs200_cmd_int_delay; int /*<<< orphan*/  dev; scalar_t__ base; scalar_t__ hs400_cmd_resp_sel_rising; } ;
struct msdc_delay_phase {int final_phase; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ timing; } ;
struct mmc_host {TYPE_1__ ios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 scalar_t__ MMC_TIMING_MMC_HS200 ; 
 scalar_t__ MMC_TIMING_UHS_SDR104 ; 
 scalar_t__ MSDC_IOCON ; 
 int /*<<< orphan*/  MSDC_IOCON_RSPL ; 
 scalar_t__ MSDC_PAD_TUNE ; 
 int /*<<< orphan*/  MSDC_PAD_TUNE_CMDRRDLY ; 
 scalar_t__ PAD_CMD_TUNE ; 
 int /*<<< orphan*/  PAD_CMD_TUNE_RX_DLY3 ; 
 int PAD_DELAY_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct msdc_delay_phase FUNC2 (struct msdc_host*,int) ; 
 struct msdc_host* FUNC3 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct mmc_host *mmc, u32 opcode)
{
	struct msdc_host *host = FUNC3(mmc);
	u32 cmd_delay = 0;
	struct msdc_delay_phase final_cmd_delay = { 0,};
	u8 final_delay;
	int cmd_err;
	int i, j;

	/* select EMMC50 PAD CMD tune */
	FUNC6(host->base + PAD_CMD_TUNE, FUNC0(0));

	if (mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
	    mmc->ios.timing == MMC_TIMING_UHS_SDR104)
		FUNC7(host->base + MSDC_PAD_TUNE,
			      MSDC_PAD_TUNE_CMDRRDLY,
			      host->hs200_cmd_int_delay);

	if (host->hs400_cmd_resp_sel_rising)
		FUNC5(host->base + MSDC_IOCON, MSDC_IOCON_RSPL);
	else
		FUNC6(host->base + MSDC_IOCON, MSDC_IOCON_RSPL);
	for (i = 0 ; i < PAD_DELAY_MAX; i++) {
		FUNC7(host->base + PAD_CMD_TUNE,
			      PAD_CMD_TUNE_RX_DLY3, i);
		/*
		 * Using the same parameters, it may sometimes pass the test,
		 * but sometimes it may fail. To make sure the parameters are
		 * more stable, we test each set of parameters 3 times.
		 */
		for (j = 0; j < 3; j++) {
			FUNC4(mmc, opcode, &cmd_err);
			if (!cmd_err) {
				cmd_delay |= (1 << i);
			} else {
				cmd_delay &= ~(1 << i);
				break;
			}
		}
	}
	final_cmd_delay = FUNC2(host, cmd_delay);
	FUNC7(host->base + PAD_CMD_TUNE, PAD_CMD_TUNE_RX_DLY3,
		      final_cmd_delay.final_phase);
	final_delay = final_cmd_delay.final_phase;

	FUNC1(host->dev, "Final cmd pad delay: %x\n", final_delay);
	return final_delay == 0xff ? -EIO : 0;
}