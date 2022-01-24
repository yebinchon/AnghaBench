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
typedef  int /*<<< orphan*/  u32 ;
struct toshsd_host {scalar_t__ ioaddr; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ SDIO_BASE ; 
 scalar_t__ SDIO_CLOCKNWAITCTRL ; 
 int SD_BUF_CMD_TIMEOUT ; 
 int SD_BUF_READ_ENABLE ; 
 int SD_BUF_WRITE_ENABLE ; 
 scalar_t__ SD_CARDCLOCKCTRL ; 
 scalar_t__ SD_CARDSTATUS ; 
 int SD_CARD_CARD_INSERTED_0 ; 
 int SD_CARD_CARD_REMOVED_0 ; 
 int SD_CARD_RESP_END ; 
 int SD_CARD_RW_END ; 
 scalar_t__ SD_ERRORSTATUS0 ; 
 scalar_t__ SD_INTMASKCARD ; 
 int /*<<< orphan*/  SD_PCICFG_CARDDETECT ; 
 int /*<<< orphan*/  SD_PCICFG_CLKSTOP ; 
 int SD_PCICFG_CLKSTOP_ENABLE_ALL ; 
 int SD_PCICFG_LED_ENABLE1_START ; 
 int SD_PCICFG_LED_ENABLE2_START ; 
 int /*<<< orphan*/  SD_PCICFG_SDLED_ENABLE1 ; 
 int /*<<< orphan*/  SD_PCICFG_SDLED_ENABLE2 ; 
 scalar_t__ SD_SOFTWARERESET ; 
 scalar_t__ SD_STOPINTERNAL ; 
 scalar_t__ SD_TRANSACTIONCTRL ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct toshsd_host *host)
{
	/* enable clock */
	FUNC3(host->pdev, SD_PCICFG_CLKSTOP,
					SD_PCICFG_CLKSTOP_ENABLE_ALL);
	FUNC3(host->pdev, SD_PCICFG_CARDDETECT, 2);

	/* reset */
	FUNC0(0, host->ioaddr + SD_SOFTWARERESET); /* assert */
	FUNC2(2);
	FUNC0(1, host->ioaddr + SD_SOFTWARERESET); /* deassert */
	FUNC2(2);

	/* Clear card registers */
	FUNC0(0, host->ioaddr + SD_CARDCLOCKCTRL);
	FUNC1(0, host->ioaddr + SD_CARDSTATUS);
	FUNC1(0, host->ioaddr + SD_ERRORSTATUS0);
	FUNC0(0, host->ioaddr + SD_STOPINTERNAL);

	/* SDIO clock? */
	FUNC0(0x100, host->ioaddr + SDIO_BASE + SDIO_CLOCKNWAITCTRL);

	/* enable LED */
	FUNC3(host->pdev, SD_PCICFG_SDLED_ENABLE1,
					SD_PCICFG_LED_ENABLE1_START);
	FUNC3(host->pdev, SD_PCICFG_SDLED_ENABLE2,
					SD_PCICFG_LED_ENABLE2_START);

	/* set interrupt masks */
	FUNC1(~(u32)(SD_CARD_RESP_END | SD_CARD_RW_END
			| SD_CARD_CARD_REMOVED_0 | SD_CARD_CARD_INSERTED_0
			| SD_BUF_READ_ENABLE | SD_BUF_WRITE_ENABLE
			| SD_BUF_CMD_TIMEOUT),
			host->ioaddr + SD_INTMASKCARD);

	FUNC0(0x1000, host->ioaddr + SD_TRANSACTIONCTRL);
}