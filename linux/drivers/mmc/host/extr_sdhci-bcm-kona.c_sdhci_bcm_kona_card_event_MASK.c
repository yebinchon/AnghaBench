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
struct sdhci_host {int /*<<< orphan*/  mmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host)
{
	if (FUNC2(host->mmc) > 0) {
		FUNC0(FUNC1(host->mmc),
			"card inserted\n");
		FUNC3(host, 1);
	} else {
		FUNC0(FUNC1(host->mmc),
			"card removed\n");
		FUNC3(host, 0);
	}
}