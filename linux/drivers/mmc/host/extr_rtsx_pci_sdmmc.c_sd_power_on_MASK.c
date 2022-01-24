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
struct realtek_pci_sdmmc {scalar_t__ power_state; struct rtsx_pcr* pcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  CARD_SELECT ; 
 int CARD_SHARE_48_SD ; 
 int CARD_SHARE_MASK ; 
 int /*<<< orphan*/  CARD_SHARE_MODE ; 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 scalar_t__ SDMMC_POWER_ON ; 
 int SD_CLK_EN ; 
 int SD_MOD_SEL ; 
 int /*<<< orphan*/  SD_OUTPUT_EN ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 
 int FUNC5 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct realtek_pci_sdmmc *host)
{
	struct rtsx_pcr *pcr = host->pcr;
	int err;

	if (host->power_state == SDMMC_POWER_ON)
		return 0;

	FUNC3(pcr);
	FUNC0(pcr, WRITE_REG_CMD, CARD_SELECT, 0x07, SD_MOD_SEL);
	FUNC0(pcr, WRITE_REG_CMD, CARD_SHARE_MODE,
			CARD_SHARE_MASK, CARD_SHARE_48_SD);
	FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_EN,
			SD_CLK_EN, SD_CLK_EN);
	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	err = FUNC2(pcr, RTSX_SD_CARD);
	if (err < 0)
		return err;

	err = FUNC1(pcr, RTSX_SD_CARD);
	if (err < 0)
		return err;

	err = FUNC5(pcr, CARD_OE, SD_OUTPUT_EN, SD_OUTPUT_EN);
	if (err < 0)
		return err;

	host->power_state = SDMMC_POWER_ON;
	return 0;
}