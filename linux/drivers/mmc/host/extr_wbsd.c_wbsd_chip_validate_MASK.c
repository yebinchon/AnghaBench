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
struct wbsd_host {int base; int irq; int dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_SD ; 
 int /*<<< orphan*/  WBSD_CONF_DEVICE ; 
 int /*<<< orphan*/  WBSD_CONF_DRQ ; 
 int /*<<< orphan*/  WBSD_CONF_IRQ ; 
 int /*<<< orphan*/  WBSD_CONF_PORT_HI ; 
 int /*<<< orphan*/  WBSD_CONF_PORT_LO ; 
 int /*<<< orphan*/  FUNC0 (struct wbsd_host*) ; 
 int FUNC1 (struct wbsd_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct wbsd_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wbsd_host *host)
{
	int base, irq, dma;

	FUNC2(host);

	/*
	 * Select SD/MMC function.
	 */
	FUNC3(host, WBSD_CONF_DEVICE, DEVICE_SD);

	/*
	 * Read configuration.
	 */
	base = FUNC1(host, WBSD_CONF_PORT_HI) << 8;
	base |= FUNC1(host, WBSD_CONF_PORT_LO);

	irq = FUNC1(host, WBSD_CONF_IRQ);

	dma = FUNC1(host, WBSD_CONF_DRQ);

	FUNC0(host);

	/*
	 * Validate against given configuration.
	 */
	if (base != host->base)
		return 0;
	if (irq != host->irq)
		return 0;
	if ((dma != host->dma) && (host->dma != -1))
		return 0;

	return 1;
}