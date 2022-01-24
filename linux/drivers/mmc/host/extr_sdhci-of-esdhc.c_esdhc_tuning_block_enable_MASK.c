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
 int /*<<< orphan*/  ESDHC_DMA_SYSCTL ; 
 int /*<<< orphan*/  ESDHC_FLUSH_ASYNC_FIFO ; 
 int /*<<< orphan*/  ESDHC_TBCTL ; 
 int /*<<< orphan*/  ESDHC_TB_EN ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sdhci_host *host, bool enable)
{
	u32 val;

	FUNC0(host, false);

	val = FUNC1(host, ESDHC_DMA_SYSCTL);
	val |= ESDHC_FLUSH_ASYNC_FIFO;
	FUNC2(host, val, ESDHC_DMA_SYSCTL);

	val = FUNC1(host, ESDHC_TBCTL);
	if (enable)
		val |= ESDHC_TB_EN;
	else
		val &= ~ESDHC_TB_EN;
	FUNC2(host, val, ESDHC_TBCTL);

	FUNC0(host, true);
}