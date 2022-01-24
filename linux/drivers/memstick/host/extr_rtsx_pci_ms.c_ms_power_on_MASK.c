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
struct realtek_pci_ms {struct rtsx_pcr* pcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_CLK_EN ; 
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  CARD_SELECT ; 
 int CARD_SHARE_48_MS ; 
 int CARD_SHARE_MASK ; 
 int /*<<< orphan*/  CARD_SHARE_MODE ; 
 int MS_CLK_EN ; 
 int MS_MOD_SEL ; 
 int /*<<< orphan*/  MS_OUTPUT_EN ; 
 int /*<<< orphan*/  RTSX_MS_CARD ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*) ; 
 int FUNC5 (struct rtsx_pcr*,int) ; 
 int FUNC6 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct realtek_pci_ms *host)
{
	struct rtsx_pcr *pcr = host->pcr;
	int err;

	FUNC4(pcr);
	FUNC1(pcr, WRITE_REG_CMD, CARD_SELECT, 0x07, MS_MOD_SEL);
	FUNC1(pcr, WRITE_REG_CMD, CARD_SHARE_MODE,
			CARD_SHARE_MASK, CARD_SHARE_48_MS);
	FUNC1(pcr, WRITE_REG_CMD, CARD_CLK_EN,
			MS_CLK_EN, MS_CLK_EN);
	err = FUNC5(pcr, 100);
	if (err < 0)
		return err;

	err = FUNC3(pcr, RTSX_MS_CARD);
	if (err < 0)
		return err;

	err = FUNC2(pcr, RTSX_MS_CARD);
	if (err < 0)
		return err;

	/* Wait ms power stable */
	FUNC0(150);

	err = FUNC6(pcr, CARD_OE,
			MS_OUTPUT_EN, MS_OUTPUT_EN);
	if (err < 0)
		return err;

	return 0;
}