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
 int DEVICE_SD ; 
 int /*<<< orphan*/  WBSD_CONF_DEVICE ; 
 int /*<<< orphan*/  WBSD_CONF_DRQ ; 
 int /*<<< orphan*/  WBSD_CONF_ENABLE ; 
 int /*<<< orphan*/  WBSD_CONF_IRQ ; 
 int /*<<< orphan*/  WBSD_CONF_PINS ; 
 int /*<<< orphan*/  WBSD_CONF_PORT_HI ; 
 int /*<<< orphan*/  WBSD_CONF_PORT_LO ; 
 int /*<<< orphan*/  WBSD_CONF_POWER ; 
 int /*<<< orphan*/  WBSD_CONF_SWRST ; 
 int WBSD_PINS_DETECT_GP11 ; 
 int /*<<< orphan*/  FUNC0 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct wbsd_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct wbsd_host *host)
{
	FUNC1(host);

	/*
	 * Reset the chip.
	 */
	FUNC2(host, WBSD_CONF_SWRST, 1);
	FUNC2(host, WBSD_CONF_SWRST, 0);

	/*
	 * Select SD/MMC function.
	 */
	FUNC2(host, WBSD_CONF_DEVICE, DEVICE_SD);

	/*
	 * Set up card detection.
	 */
	FUNC2(host, WBSD_CONF_PINS, WBSD_PINS_DETECT_GP11);

	/*
	 * Configure chip
	 */
	FUNC2(host, WBSD_CONF_PORT_HI, host->base >> 8);
	FUNC2(host, WBSD_CONF_PORT_LO, host->base & 0xff);

	FUNC2(host, WBSD_CONF_IRQ, host->irq);

	if (host->dma >= 0)
		FUNC2(host, WBSD_CONF_DRQ, host->dma);

	/*
	 * Enable and power up chip.
	 */
	FUNC2(host, WBSD_CONF_ENABLE, 1);
	FUNC2(host, WBSD_CONF_POWER, 0x20);

	FUNC0(host);
}