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
 int /*<<< orphan*/  SDHCI_CLOCK_CARD_EN ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct sdhci_host *host)
{
	u16 ctrl;

	ctrl = FUNC0(host, SDHCI_CLOCK_CONTROL);
	ctrl |= SDHCI_CLOCK_CARD_EN;
	FUNC1(host, ctrl, SDHCI_CLOCK_CONTROL);
}