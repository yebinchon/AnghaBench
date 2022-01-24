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
typedef  int u8 ;
struct realtek_pci_sdmmc {int /*<<< orphan*/  pcr; } ;

/* Variables and functions */
 int SD_DATA_IDLE ; 
 int /*<<< orphan*/  SD_DATA_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct realtek_pci_sdmmc *host)
{
	int err, i;
	u8 val = 0;

	for (i = 0; i < 100; i++) {
		err = FUNC0(host->pcr, SD_DATA_STATE, &val);
		if (val & SD_DATA_IDLE)
			return;

		FUNC1(100);
	}
}