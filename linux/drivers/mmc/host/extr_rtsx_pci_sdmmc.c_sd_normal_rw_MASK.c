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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct realtek_pci_sdmmc {scalar_t__ initial_mode; } ;
struct mmc_request {struct mmc_data* data; struct mmc_command* cmd; } ;
struct mmc_data {int flags; scalar_t__ blksz; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct mmc_command {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct realtek_pci_sdmmc*) ; 
 int /*<<< orphan*/  FUNC3 (struct realtek_pci_sdmmc*) ; 
 int /*<<< orphan*/  FUNC4 (struct realtek_pci_sdmmc*,struct mmc_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct realtek_pci_sdmmc*,struct mmc_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct realtek_pci_sdmmc *host,
		struct mmc_request *mrq)
{
	struct mmc_command *cmd = mrq->cmd;
	struct mmc_data *data = mrq->data;
	u8 *buf;

	buf = FUNC1(data->blksz, GFP_NOIO);
	if (!buf) {
		cmd->error = -ENOMEM;
		return;
	}

	if (data->flags & MMC_DATA_READ) {
		if (host->initial_mode)
			FUNC2(host);

		cmd->error = FUNC4(host, cmd, (u16)data->blksz, buf,
				data->blksz, 200);

		if (host->initial_mode)
			FUNC3(host);

		FUNC6(data->sg, data->sg_len, buf, data->blksz);
	} else {
		FUNC7(data->sg, data->sg_len, buf, data->blksz);

		cmd->error = FUNC5(host, cmd, (u16)data->blksz, buf,
				data->blksz, 200);
	}

	FUNC0(buf);
}