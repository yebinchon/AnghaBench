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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLI_9750_MISC_RX_INV_OFF ; 
 int /*<<< orphan*/  GLI_9750_MISC_RX_INV_ON ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_MISC ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_MISC_RX_INV ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, bool b)
{
	u32 misc_value;

	FUNC2(host);

	misc_value = FUNC3(host, SDHCI_GLI_9750_MISC);
	misc_value &= ~SDHCI_GLI_9750_MISC_RX_INV;
	if (b) {
		misc_value |= FUNC0(SDHCI_GLI_9750_MISC_RX_INV,
					 GLI_9750_MISC_RX_INV_ON);
	} else {
		misc_value |= FUNC0(SDHCI_GLI_9750_MISC_RX_INV,
					 GLI_9750_MISC_RX_INV_OFF);
	}
	FUNC4(host, misc_value, SDHCI_GLI_9750_MISC);

	FUNC1(host);
}