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
 int SDHCI_RESET_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,unsigned char,int) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host,
			     unsigned char sdhc_id, u8 mask)
{
	/* Only SOFTWARE RESET ALL will clear the register setting */
	if (!(mask & SDHCI_RESET_ALL))
		return;

	/* Disable tuning request and auto-retuning again */
	FUNC1(host);

	FUNC2(host, true);

	FUNC3(host, sdhc_id, false);

	FUNC0(host);
}