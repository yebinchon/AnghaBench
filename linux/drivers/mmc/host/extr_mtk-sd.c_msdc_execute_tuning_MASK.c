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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {void* emmc_top_cmd; void* emmc_top_control; void* pad_cmd_tune; void* pad_tune; void* iocon; } ;
struct msdc_host {int hs400_mode; scalar_t__ top_base; TYPE_2__ saved_tune_para; scalar_t__ base; int /*<<< orphan*/  dev; TYPE_1__* dev_comp; } ;
struct mmc_host {int dummy; } ;
struct TYPE_3__ {scalar_t__ hs400_tune; scalar_t__ async_fifo; scalar_t__ data_tune; scalar_t__ pad_tune_reg; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ EMMC_TOP_CMD ; 
 scalar_t__ EMMC_TOP_CONTROL ; 
 scalar_t__ MSDC_IOCON ; 
 int MSDC_IOCON_DSPL ; 
 int MSDC_IOCON_W_DSPL ; 
 scalar_t__ PAD_CMD_TUNE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct mmc_host*,scalar_t__) ; 
 struct msdc_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdc_host*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mmc_host*,scalar_t__) ; 
 int FUNC5 (struct mmc_host*,scalar_t__) ; 
 int FUNC6 (struct mmc_host*,scalar_t__) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC9(struct mmc_host *mmc, u32 opcode)
{
	struct msdc_host *host = FUNC2(mmc);
	int ret;
	u32 tune_reg = host->dev_comp->pad_tune_reg;

	if (host->dev_comp->data_tune && host->dev_comp->async_fifo) {
		ret = FUNC6(mmc, opcode);
		if (host->hs400_mode) {
			FUNC8(host->base + MSDC_IOCON,
				     MSDC_IOCON_DSPL | MSDC_IOCON_W_DSPL);
			FUNC3(host, 0);
		}
		goto tune_done;
	}
	if (host->hs400_mode &&
	    host->dev_comp->hs400_tune)
		ret = FUNC1(mmc, opcode);
	else
		ret = FUNC5(mmc, opcode);
	if (ret == -EIO) {
		FUNC0(host->dev, "Tune response fail!\n");
		return ret;
	}
	if (host->hs400_mode == false) {
		ret = FUNC4(mmc, opcode);
		if (ret == -EIO)
			FUNC0(host->dev, "Tune data fail!\n");
	}

tune_done:
	host->saved_tune_para.iocon = FUNC7(host->base + MSDC_IOCON);
	host->saved_tune_para.pad_tune = FUNC7(host->base + tune_reg);
	host->saved_tune_para.pad_cmd_tune = FUNC7(host->base + PAD_CMD_TUNE);
	if (host->top_base) {
		host->saved_tune_para.emmc_top_control = FUNC7(host->top_base +
				EMMC_TOP_CONTROL);
		host->saved_tune_para.emmc_top_cmd = FUNC7(host->top_base +
				EMMC_TOP_CMD);
	}
	return ret;
}