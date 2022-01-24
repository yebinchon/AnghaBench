#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct toshsd_host {int /*<<< orphan*/  lock; scalar_t__ ioaddr; TYPE_3__* mmc; TYPE_2__* cmd; TYPE_1__* pdev; } ;
typedef  int irqreturn_t ;
struct TYPE_7__ {int /*<<< orphan*/  ios; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EILSEQ ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int IRQ_DONT_CARE_BITS ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int IRQ_WAKE_THREAD ; 
 int SD_BUF_CMD_INDEX_ERR ; 
 int SD_BUF_CMD_TIMEOUT ; 
 int SD_BUF_CRC_ERR ; 
 int SD_BUF_DATA_TIMEOUT ; 
 int SD_BUF_ILLEGAL_ACCESS ; 
 int SD_BUF_OVERFLOW ; 
 int SD_BUF_READ_ENABLE ; 
 int SD_BUF_STOP_BIT_END_ERR ; 
 int SD_BUF_UNDERFLOW ; 
 int SD_BUF_WRITE_ENABLE ; 
 scalar_t__ SD_CARDSTATUS ; 
 int SD_CARD_CARD_INSERTED_0 ; 
 int SD_CARD_CARD_REMOVED_0 ; 
 int SD_CARD_RESP_END ; 
 int SD_CARD_RW_END ; 
 int SD_ERR0_READ_DATA_CRC_ERR ; 
 int SD_ERR0_READ_DATA_END_BIT_ERR ; 
 int SD_ERR0_RESP_CMD12_CRC_ERR ; 
 int SD_ERR0_RESP_CMD12_END_BIT_ERR ; 
 int SD_ERR0_RESP_CMD_ERR ; 
 int SD_ERR0_RESP_NON_CMD12_CRC_ERR ; 
 int SD_ERR0_RESP_NON_CMD12_END_BIT_ERR ; 
 int SD_ERR0_WRITE_CMD_CRC_ERR ; 
 int SD_ERR0_WRITE_CRC_STATUS_END_BIT_ERR ; 
 int SD_ERR1_NO_CMD_RESP ; 
 int SD_ERR1_TIMEOUT_CRC_BUSY ; 
 int SD_ERR1_TIMEOUT_CRS_STATUS ; 
 int SD_ERR1_TIMEOUT_READ_DATA ; 
 scalar_t__ SD_ERRORSTATUS0 ; 
 scalar_t__ SD_INTMASKCARD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct toshsd_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct toshsd_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct toshsd_host*) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct toshsd_host *host = dev_id;
	u32 int_reg, int_mask, int_status, detail;
	int error = 0, ret = IRQ_HANDLED;

	FUNC6(&host->lock);
	int_status = FUNC3(host->ioaddr + SD_CARDSTATUS);
	int_mask = FUNC3(host->ioaddr + SD_INTMASKCARD);
	int_reg = int_status & ~int_mask & ~IRQ_DONT_CARE_BITS;

	FUNC1(&host->pdev->dev, "IRQ status:%x mask:%x\n",
		int_status, int_mask);

	/* nothing to do: it's not our IRQ */
	if (!int_reg) {
		ret = IRQ_NONE;
		goto irq_end;
	}

	if (int_reg & SD_BUF_CMD_TIMEOUT) {
		error = -ETIMEDOUT;
		FUNC1(&host->pdev->dev, "Timeout\n");
	} else if (int_reg & SD_BUF_CRC_ERR) {
		error = -EILSEQ;
		FUNC2(&host->pdev->dev, "BadCRC\n");
	} else if (int_reg & (SD_BUF_ILLEGAL_ACCESS
				| SD_BUF_CMD_INDEX_ERR
				| SD_BUF_STOP_BIT_END_ERR
				| SD_BUF_OVERFLOW
				| SD_BUF_UNDERFLOW
				| SD_BUF_DATA_TIMEOUT)) {
		FUNC2(&host->pdev->dev, "Buffer status error: { %s%s%s%s%s%s}\n",
			int_reg & SD_BUF_ILLEGAL_ACCESS ? "ILLEGAL_ACC " : "",
			int_reg & SD_BUF_CMD_INDEX_ERR ? "CMD_INDEX " : "",
			int_reg & SD_BUF_STOP_BIT_END_ERR ? "STOPBIT_END " : "",
			int_reg & SD_BUF_OVERFLOW ? "OVERFLOW " : "",
			int_reg & SD_BUF_UNDERFLOW ? "UNDERFLOW " : "",
			int_reg & SD_BUF_DATA_TIMEOUT ? "DATA_TIMEOUT " : "");

		detail = FUNC3(host->ioaddr + SD_ERRORSTATUS0);
		FUNC2(&host->pdev->dev, "detail error status { %s%s%s%s%s%s%s%s%s%s%s%s%s}\n",
			detail & SD_ERR0_RESP_CMD_ERR ? "RESP_CMD " : "",
			detail & SD_ERR0_RESP_NON_CMD12_END_BIT_ERR ? "RESP_END_BIT " : "",
			detail & SD_ERR0_RESP_CMD12_END_BIT_ERR ? "RESP_END_BIT " : "",
			detail & SD_ERR0_READ_DATA_END_BIT_ERR ? "READ_DATA_END_BIT " : "",
			detail & SD_ERR0_WRITE_CRC_STATUS_END_BIT_ERR ? "WRITE_CMD_END_BIT " : "",
			detail & SD_ERR0_RESP_NON_CMD12_CRC_ERR ? "RESP_CRC " : "",
			detail & SD_ERR0_RESP_CMD12_CRC_ERR ? "RESP_CRC " : "",
			detail & SD_ERR0_READ_DATA_CRC_ERR ? "READ_DATA_CRC " : "",
			detail & SD_ERR0_WRITE_CMD_CRC_ERR ? "WRITE_CMD_CRC " : "",
			detail & SD_ERR1_NO_CMD_RESP ? "NO_CMD_RESP " : "",
			detail & SD_ERR1_TIMEOUT_READ_DATA ? "READ_DATA_TIMEOUT " : "",
			detail & SD_ERR1_TIMEOUT_CRS_STATUS ? "CRS_STATUS_TIMEOUT " : "",
			detail & SD_ERR1_TIMEOUT_CRC_BUSY ? "CRC_BUSY_TIMEOUT " : "");
		error = -EIO;
	}

	if (error) {
		if (host->cmd)
			host->cmd->error = error;

		if (error == -ETIMEDOUT) {
			FUNC4(int_status &
				  ~(SD_BUF_CMD_TIMEOUT | SD_CARD_RESP_END),
				  host->ioaddr + SD_CARDSTATUS);
		} else {
			FUNC10(host);
			FUNC0(host->mmc, &host->mmc->ios);
			goto irq_end;
		}
	}

	/* Card insert/remove. The mmc controlling code is stateless. */
	if (int_reg & (SD_CARD_CARD_INSERTED_0 | SD_CARD_CARD_REMOVED_0)) {
		FUNC4(int_status &
			  ~(SD_CARD_CARD_REMOVED_0 | SD_CARD_CARD_INSERTED_0),
			  host->ioaddr + SD_CARDSTATUS);

		if (int_reg & SD_CARD_CARD_INSERTED_0)
			FUNC10(host);

		FUNC5(host->mmc, 1);
	}

	/* Data transfer */
	if (int_reg & (SD_BUF_READ_ENABLE | SD_BUF_WRITE_ENABLE)) {
		FUNC4(int_status &
			  ~(SD_BUF_WRITE_ENABLE | SD_BUF_READ_ENABLE),
			  host->ioaddr + SD_CARDSTATUS);

		ret = IRQ_WAKE_THREAD;
		goto irq_end;
	}

	/* Command completion */
	if (int_reg & SD_CARD_RESP_END) {
		FUNC4(int_status & ~(SD_CARD_RESP_END),
			  host->ioaddr + SD_CARDSTATUS);
		FUNC8(host);
	}

	/* Data transfer completion */
	if (int_reg & SD_CARD_RW_END) {
		FUNC4(int_status & ~(SD_CARD_RW_END),
			  host->ioaddr + SD_CARDSTATUS);
		FUNC9(host);
	}
irq_end:
	FUNC7(&host->lock);
	return ret;
}