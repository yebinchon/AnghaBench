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
struct wbsd_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wbsd_host*,int) ; 
 int FUNC1 (struct wbsd_host*,int) ; 
 int FUNC2 (struct wbsd_host*,int) ; 

__attribute__((used)) static int FUNC3(struct wbsd_host *host,
	int base, int irq, int dma)
{
	int ret;

	/*
	 * Allocate I/O ports.
	 */
	ret = FUNC2(host, base);
	if (ret)
		return ret;

	/*
	 * Allocate interrupt.
	 */
	ret = FUNC1(host, irq);
	if (ret)
		return ret;

	/*
	 * Allocate DMA.
	 */
	FUNC0(host, dma);

	return 0;
}