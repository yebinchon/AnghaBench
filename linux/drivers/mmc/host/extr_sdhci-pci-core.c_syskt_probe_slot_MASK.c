#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sdhci_pci_slot {TYPE_3__* host; TYPE_2__* chip; } ;
struct TYPE_6__ {scalar_t__ ioaddr; int /*<<< orphan*/  quirks; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SDHCI_QUIRK_FORCE_DMA ; 
 scalar_t__ SYSKT_BOARD_REV ; 
 scalar_t__ SYSKT_CHIP_REV ; 
 int /*<<< orphan*/  SYSKT_POWER_330 ; 
 scalar_t__ SYSKT_POWER_CMD ; 
 scalar_t__ SYSKT_POWER_DATA ; 
 int /*<<< orphan*/  SYSKT_POWER_START ; 
 scalar_t__ SYSKT_POWER_STATUS ; 
 int SYSKT_POWER_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sdhci_pci_slot *slot)
{
	int tm, ps;

	u8 board_rev = FUNC2(slot->host->ioaddr + SYSKT_BOARD_REV);
	u8  chip_rev = FUNC2(slot->host->ioaddr + SYSKT_CHIP_REV);
	FUNC1(&slot->chip->pdev->dev, "SysKonnect CardBus2SDIO, "
					 "board rev %d.%d, chip rev %d.%d\n",
					 board_rev >> 4, board_rev & 0xf,
					 chip_rev >> 4,  chip_rev & 0xf);
	if (chip_rev >= 0x20)
		slot->host->quirks |= SDHCI_QUIRK_FORCE_DMA;

	FUNC5(SYSKT_POWER_330, slot->host->ioaddr + SYSKT_POWER_DATA);
	FUNC5(SYSKT_POWER_START, slot->host->ioaddr + SYSKT_POWER_CMD);
	FUNC4(50);
	tm = 10;  /* Wait max 1 ms */
	do {
		ps = FUNC3(slot->host->ioaddr + SYSKT_POWER_STATUS);
		if (ps & SYSKT_POWER_STATUS_OK)
			break;
		FUNC4(100);
	} while (--tm);
	if (!tm) {
		FUNC0(&slot->chip->pdev->dev,
			"power regulator never stabilized");
		FUNC5(0, slot->host->ioaddr + SYSKT_POWER_CMD);
		return -ENODEV;
	}

	return 0;
}