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
typedef  int /*<<< orphan*/  u16 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CTRL_EXEC_TUNING ; 
 int /*<<< orphan*/  SDHCI_CTRL_TUNED_CLK ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct sdhci_host *host)
{
	u16 ctrl;

	ctrl = FUNC0(host, SDHCI_HOST_CONTROL2);
	ctrl &= ~SDHCI_CTRL_TUNED_CLK;
	ctrl &= ~SDHCI_CTRL_EXEC_TUNING;
	FUNC1(host, ctrl, SDHCI_HOST_CONTROL2);
}