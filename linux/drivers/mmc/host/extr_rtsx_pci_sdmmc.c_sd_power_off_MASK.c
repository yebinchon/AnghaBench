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
struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {int /*<<< orphan*/  power_state; struct rtsx_pcr* pcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 int /*<<< orphan*/  SDMMC_POWER_OFF ; 
 int /*<<< orphan*/  SD_CLK_EN ; 
 int /*<<< orphan*/  SD_OUTPUT_EN ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC5(struct realtek_pci_sdmmc *host)
{
	struct rtsx_pcr *pcr = host->pcr;
	int err;

	host->power_state = SDMMC_POWER_OFF;

	FUNC3(pcr);

	FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_EN, SD_CLK_EN, 0);
	FUNC0(pcr, WRITE_REG_CMD, CARD_OE, SD_OUTPUT_EN, 0);

	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	err = FUNC1(pcr, RTSX_SD_CARD);
	if (err < 0)
		return err;

	return FUNC2(pcr, RTSX_SD_CARD);
}