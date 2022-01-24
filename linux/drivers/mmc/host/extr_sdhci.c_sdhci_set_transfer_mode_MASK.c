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
typedef  int u16 ;
struct sdhci_host {int quirks2; int flags; int /*<<< orphan*/  data; } ;
struct mmc_data {int blocks; int flags; } ;
struct mmc_command {scalar_t__ opcode; TYPE_2__* mrq; struct mmc_data* data; } ;
struct TYPE_4__ {TYPE_1__* sbc; } ;
struct TYPE_3__ {int /*<<< orphan*/  arg; } ;

/* Variables and functions */
 int MMC_DATA_READ ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ; 
 int /*<<< orphan*/  SDHCI_ARGUMENT2 ; 
 int SDHCI_AUTO_CMD23 ; 
 int SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD ; 
 int SDHCI_QUIRK2_SUPPORT_SINGLE ; 
 int SDHCI_REQ_USE_DMA ; 
 int /*<<< orphan*/  SDHCI_TRANSFER_MODE ; 
 int SDHCI_TRNS_AUTO_CMD12 ; 
 int SDHCI_TRNS_AUTO_CMD23 ; 
 int SDHCI_TRNS_BLK_CNT_EN ; 
 int SDHCI_TRNS_DMA ; 
 int SDHCI_TRNS_MULTI ; 
 int SDHCI_TRNS_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,struct mmc_command*,int*) ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sdhci_host *host,
	struct mmc_command *cmd)
{
	u16 mode = 0;
	struct mmc_data *data = cmd->data;

	if (data == NULL) {
		if (host->quirks2 &
			SDHCI_QUIRK2_CLEAR_TRANSFERMODE_REG_BEFORE_CMD) {
			/* must not clear SDHCI_TRANSFER_MODE when tuning */
			if (cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200)
				FUNC5(host, 0x0, SDHCI_TRANSFER_MODE);
		} else {
		/* clear Auto CMD settings for no data CMDs */
			mode = FUNC3(host, SDHCI_TRANSFER_MODE);
			FUNC5(host, mode & ~(SDHCI_TRNS_AUTO_CMD12 |
				SDHCI_TRNS_AUTO_CMD23), SDHCI_TRANSFER_MODE);
		}
		return;
	}

	FUNC0(!host->data);

	if (!(host->quirks2 & SDHCI_QUIRK2_SUPPORT_SINGLE))
		mode = SDHCI_TRNS_BLK_CNT_EN;

	if (FUNC1(cmd->opcode) || data->blocks > 1) {
		mode = SDHCI_TRNS_BLK_CNT_EN | SDHCI_TRNS_MULTI;
		FUNC2(host, cmd, &mode);
		if (cmd->mrq->sbc && (host->flags & SDHCI_AUTO_CMD23))
			FUNC4(host, cmd->mrq->sbc->arg, SDHCI_ARGUMENT2);
	}

	if (data->flags & MMC_DATA_READ)
		mode |= SDHCI_TRNS_READ;
	if (host->flags & SDHCI_REQ_USE_DMA)
		mode |= SDHCI_TRNS_DMA;

	FUNC5(host, mode, SDHCI_TRANSFER_MODE);
}