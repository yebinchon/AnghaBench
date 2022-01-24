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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ MMC_SEND_TUNING_BLOCK ; 
 scalar_t__ MMC_SEND_TUNING_BLOCK_HS200 ; 
 int SDHCI_COMMAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SDHCI_RESET_CMD ; 
 int SDHCI_RESET_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int) ; 
 int FUNC2 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, u16 val, int reg)
{
	bool is_tuning_cmd = 0;
	bool clk_enabled;
	u8 cmd;

	if (reg == SDHCI_COMMAND) {
		cmd = FUNC0(val);
		is_tuning_cmd = cmd == MMC_SEND_TUNING_BLOCK ||
				cmd == MMC_SEND_TUNING_BLOCK_HS200;
	}

	if (is_tuning_cmd)
		clk_enabled = FUNC2(host, 0);

	FUNC4(val, host->ioaddr + reg);

	if (is_tuning_cmd) {
		FUNC3(1);
		FUNC1(host, SDHCI_RESET_CMD | SDHCI_RESET_DATA);
		FUNC2(host, clk_enabled);
	}
}