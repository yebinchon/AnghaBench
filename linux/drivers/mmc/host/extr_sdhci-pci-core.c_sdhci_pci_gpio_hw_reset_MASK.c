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
struct sdhci_pci_slot {int rst_n_gpio; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct sdhci_pci_slot* FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	struct sdhci_pci_slot *slot = FUNC2(host);
	int rst_n_gpio = slot->rst_n_gpio;

	if (!FUNC0(rst_n_gpio))
		return;
	FUNC1(rst_n_gpio, 0);
	/* For eMMC, minimum is 1us but give it 10us for good measure */
	FUNC3(10);
	FUNC1(rst_n_gpio, 1);
	/* For eMMC, minimum is 200us but give it 300us for good measure */
	FUNC4(300, 1000);
}