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
struct sdhci_host {scalar_t__ ioaddr; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int SDH_SHARED_BUS_CLK_PINS ; 
 scalar_t__ SDH_SHARED_BUS_CTRL ; 
 int SDH_SHARED_BUS_IRQ_PINS ; 
 int SDH_SHARED_BUS_NR_CLK_PINS_MASK ; 
 int SDH_SHARED_BUS_NR_IRQ_PINS_MASK ; 
 struct sdhci_host* FUNC0 (struct platform_device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev)
{
	struct sdhci_host *host = FUNC0(pdev);
	u32 bus = FUNC1(host->ioaddr + SDH_SHARED_BUS_CTRL);
	u32 clk_pins = (bus & SDH_SHARED_BUS_NR_CLK_PINS_MASK) >> 0;
	u32 irq_pins = (bus & SDH_SHARED_BUS_NR_IRQ_PINS_MASK) >> 4;

	/* select first clock */
	if (clk_pins & 1)
		bus |= (1 << SDH_SHARED_BUS_CLK_PINS);

	/* select first interrupt */
	if (irq_pins & 1)
		bus |= (1 << SDH_SHARED_BUS_IRQ_PINS);

	FUNC2(bus, host->ioaddr + SDH_SHARED_BUS_CTRL);
}