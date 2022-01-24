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
struct realtek_pci_sdmmc {int dummy; } ;

/* Variables and functions */
 unsigned char MMC_POWER_OFF ; 
 int FUNC0 (struct realtek_pci_sdmmc*) ; 
 int FUNC1 (struct realtek_pci_sdmmc*) ; 

__attribute__((used)) static int FUNC2(struct realtek_pci_sdmmc *host,
		unsigned char power_mode)
{
	int err;

	if (power_mode == MMC_POWER_OFF)
		err = FUNC0(host);
	else
		err = FUNC1(host);

	return err;
}