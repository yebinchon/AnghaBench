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
 int SDHCI_CTRL_V4_MODE ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host)
{
	u16 ctrl2;

	ctrl2 = FUNC0(host, SDHCI_HOST_CONTROL2);
	if (ctrl2 & SDHCI_CTRL_V4_MODE)
		return;

	ctrl2 |= SDHCI_CTRL_V4_MODE;
	FUNC1(host, ctrl2, SDHCI_HOST_CONTROL2);
}