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
struct via_crdr_mmc_host {int power; int /*<<< orphan*/  lock; scalar_t__ pcictrl_mmiobase; } ;

/* Variables and functions */
 int MMC_VDD_165_195 ; 
 scalar_t__ VIA_CRDR_PCICLKGATT ; 
 int /*<<< orphan*/  VIA_CRDR_PCICLKGATT_3V3 ; 
 int /*<<< orphan*/  VIA_CRDR_PCICLKGATT_PAD_PWRON ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct via_crdr_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct via_crdr_mmc_host *host,
			      unsigned short power, unsigned int on)
{
	unsigned long flags;
	u8 gatt;

	FUNC1(&host->lock, flags);

	host->power = (1 << power);

	gatt = FUNC0(host->pcictrl_mmiobase + VIA_CRDR_PCICLKGATT);
	if (host->power == MMC_VDD_165_195)
		gatt &= ~VIA_CRDR_PCICLKGATT_3V3;
	else
		gatt |= VIA_CRDR_PCICLKGATT_3V3;
	if (on)
		gatt |= VIA_CRDR_PCICLKGATT_PAD_PWRON;
	else
		gatt &= ~VIA_CRDR_PCICLKGATT_PAD_PWRON;
	FUNC4(gatt, host->pcictrl_mmiobase + VIA_CRDR_PCICLKGATT);

	FUNC2(&host->lock, flags);

	FUNC3(host);
}