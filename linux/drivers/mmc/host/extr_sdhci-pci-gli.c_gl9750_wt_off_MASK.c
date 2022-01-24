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
typedef  scalar_t__ u32 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ GLI_9750_WT_EN_OFF ; 
 int /*<<< orphan*/  SDHCI_GLI_9750_WT ; 
 scalar_t__ SDHCI_GLI_9750_WT_EN ; 
 scalar_t__ FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct sdhci_host *host)
{
	u32 wt_value;
	u32 wt_enable;

	wt_value = FUNC2(host, SDHCI_GLI_9750_WT);
	wt_enable = FUNC0(SDHCI_GLI_9750_WT_EN, wt_value);

	if (wt_enable == GLI_9750_WT_EN_OFF)
		return;

	wt_value &= ~SDHCI_GLI_9750_WT_EN;
	wt_value |= FUNC1(SDHCI_GLI_9750_WT_EN, GLI_9750_WT_EN_OFF);

	FUNC3(host, wt_value, SDHCI_GLI_9750_WT);
}