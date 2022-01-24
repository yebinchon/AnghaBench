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
typedef  int u32 ;
struct sdhci_sprd_host {int /*<<< orphan*/  base_rate; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int SDHCI_SPRD_BIT_INNR_CLK_AUTO_EN ; 
 int SDHCI_SPRD_BIT_OUTR_CLK_AUTO_EN ; 
 int /*<<< orphan*/  SDHCI_SPRD_REG_32_BUSY_POSI ; 
 struct sdhci_sprd_host* FUNC0 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int) ; 
 int FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct sdhci_host *host,
					unsigned int clk)
{
	struct sdhci_sprd_host *sprd_host = FUNC0(host);
	u32 div, val, mask;

	FUNC5(host, 0, SDHCI_CLOCK_CONTROL);

	div = FUNC3(sprd_host->base_rate, clk);
	div = ((div & 0x300) >> 2) | ((div & 0xFF) << 8);
	FUNC1(host, div);

	/* enable auto gate sdhc_enable_auto_gate */
	val = FUNC2(host, SDHCI_SPRD_REG_32_BUSY_POSI);
	mask = SDHCI_SPRD_BIT_OUTR_CLK_AUTO_EN |
	       SDHCI_SPRD_BIT_INNR_CLK_AUTO_EN;
	if (mask != (val & mask)) {
		val |= mask;
		FUNC4(host, val, SDHCI_SPRD_REG_32_BUSY_POSI);
	}
}