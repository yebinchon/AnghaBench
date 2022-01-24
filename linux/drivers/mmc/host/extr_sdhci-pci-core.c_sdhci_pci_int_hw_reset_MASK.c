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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_POWER_CONTROL ; 
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host)
{
	u8 reg;

	reg = FUNC0(host, SDHCI_POWER_CONTROL);
	reg |= 0x10;
	FUNC1(host, reg, SDHCI_POWER_CONTROL);
	/* For eMMC, minimum is 1us but give it 9us for good measure */
	FUNC2(9);
	reg &= ~0x10;
	FUNC1(host, reg, SDHCI_POWER_CONTROL);
	/* For eMMC, minimum is 200us but give it 300us for good measure */
	FUNC3(300, 1000);
}