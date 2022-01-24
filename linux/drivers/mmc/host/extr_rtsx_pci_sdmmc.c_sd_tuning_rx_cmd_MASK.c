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
struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; } ;
struct mmc_command {int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_CFG3 ; 
 int /*<<< orphan*/  SD_RSP_80CLK_TIMEOUT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct realtek_pci_sdmmc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct realtek_pci_sdmmc*) ; 
 int FUNC3 (struct realtek_pci_sdmmc*,struct mmc_command*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct realtek_pci_sdmmc*) ; 

__attribute__((used)) static int FUNC5(struct realtek_pci_sdmmc *host,
		u8 opcode, u8 sample_point)
{
	int err;
	struct mmc_command cmd = {};
	struct rtsx_pcr *pcr = host->pcr;

	FUNC1(host, sample_point, true);

	FUNC0(pcr, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN,
		SD_RSP_80CLK_TIMEOUT_EN);

	cmd.opcode = opcode;
	err = FUNC3(host, &cmd, 0x40, NULL, 0, 100);
	if (err < 0) {
		/* Wait till SD DATA IDLE */
		FUNC4(host);
		FUNC2(host);
		FUNC0(pcr, SD_CFG3,
			SD_RSP_80CLK_TIMEOUT_EN, 0);
		return err;
	}

	FUNC0(pcr, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN, 0);
	return 0;
}