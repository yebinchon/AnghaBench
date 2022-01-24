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
struct sdhci_host {int quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CTRL_LED ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int SDHCI_QUIRK_NO_LED ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host)
{
	u8 ctrl;

	if (host->quirks & SDHCI_QUIRK_NO_LED)
		return;

	ctrl = FUNC0(host, SDHCI_HOST_CONTROL);
	ctrl |= SDHCI_CTRL_LED;
	FUNC1(host, ctrl, SDHCI_HOST_CONTROL);
}