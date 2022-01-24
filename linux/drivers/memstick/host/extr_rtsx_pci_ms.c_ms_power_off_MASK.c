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
 int /*<<< orphan*/  MS_CLK_EN ; 
 int /*<<< orphan*/  MS_OUTPUT_EN ; 
 int /*<<< orphan*/  RTSX_MS_CARD ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int FUNC4 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC5(struct realtek_pci_ms *host)
{
	struct rtsx_pcr *pcr = host->pcr;
	int err;

	FUNC3(pcr);

	FUNC0(pcr, WRITE_REG_CMD, CARD_CLK_EN, MS_CLK_EN, 0);
	FUNC0(pcr, WRITE_REG_CMD, CARD_OE, MS_OUTPUT_EN, 0);

	err = FUNC4(pcr, 100);
	if (err < 0)
		return err;

	err = FUNC1(pcr, RTSX_MS_CARD);
	if (err < 0)
		return err;

	return FUNC2(pcr, RTSX_MS_CARD);
}