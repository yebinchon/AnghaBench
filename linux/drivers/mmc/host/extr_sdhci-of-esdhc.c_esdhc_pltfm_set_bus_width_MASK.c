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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESDHC_CTRL_4BITBUS ; 
 int /*<<< orphan*/  ESDHC_CTRL_8BITBUS ; 
 int /*<<< orphan*/  ESDHC_CTRL_BUSWIDTH_MASK ; 
 int /*<<< orphan*/  ESDHC_PROCTL ; 
#define  MMC_BUS_WIDTH_4 129 
#define  MMC_BUS_WIDTH_8 128 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host, int width)
{
	u32 ctrl;

	ctrl = FUNC0(host, ESDHC_PROCTL);
	ctrl &= (~ESDHC_CTRL_BUSWIDTH_MASK);
	switch (width) {
	case MMC_BUS_WIDTH_8:
		ctrl |= ESDHC_CTRL_8BITBUS;
		break;

	case MMC_BUS_WIDTH_4:
		ctrl |= ESDHC_CTRL_4BITBUS;
		break;

	default:
		break;
	}

	FUNC1(host, ctrl, ESDHC_PROCTL);
}