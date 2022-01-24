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
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int SDHCI_SPRD_BIT_DLL_BAK ; 
 int SDHCI_SPRD_BIT_DLL_VAL ; 
 int /*<<< orphan*/  SDHCI_SPRD_REG_DEBOUNCE ; 
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host)
{
	u16 val;

	/* set dll backup mode */
	val = FUNC0(host, SDHCI_SPRD_REG_DEBOUNCE);
	val |= SDHCI_SPRD_BIT_DLL_BAK | SDHCI_SPRD_BIT_DLL_VAL;
	FUNC1(host, val, SDHCI_SPRD_REG_DEBOUNCE);
}