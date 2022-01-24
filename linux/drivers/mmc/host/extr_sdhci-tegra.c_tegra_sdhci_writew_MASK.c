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
typedef  int u16 ;
struct sdhci_pltfm_host {int xfer_mode_shadow; } ;
struct sdhci_host {int const ioaddr; } ;

/* Variables and functions */
#define  SDHCI_COMMAND 129 
#define  SDHCI_TRANSFER_MODE 128 
 struct sdhci_pltfm_host* FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int,int const) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, u16 val, int reg)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC0(host);

	switch (reg) {
	case SDHCI_TRANSFER_MODE:
		/*
		 * Postpone this write, we must do it together with a
		 * command write that is down below.
		 */
		pltfm_host->xfer_mode_shadow = val;
		return;
	case SDHCI_COMMAND:
		FUNC1((val << 16) | pltfm_host->xfer_mode_shadow,
			host->ioaddr + SDHCI_TRANSFER_MODE);
		return;
	}

	FUNC2(val, host->ioaddr + reg);
}