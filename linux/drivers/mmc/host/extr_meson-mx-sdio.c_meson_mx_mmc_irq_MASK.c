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
struct meson_mx_mmc_host {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MESON_MX_SDIO_IRQS ; 
 int MESON_MX_SDIO_IRQS_CMD_INT ; 
 scalar_t__ MESON_MX_SDIO_SEND ; 
 int /*<<< orphan*/  FUNC0 (struct meson_mx_mmc_host*,int,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct meson_mx_mmc_host *host = (void *) data;
	u32 irqs, send;
	unsigned long irqflags;
	irqreturn_t ret;

	FUNC2(&host->irq_lock, irqflags);

	irqs = FUNC1(host->base + MESON_MX_SDIO_IRQS);
	send = FUNC1(host->base + MESON_MX_SDIO_SEND);

	if (irqs & MESON_MX_SDIO_IRQS_CMD_INT)
		ret = FUNC0(host, irqs, send);
	else
		ret = IRQ_HANDLED;

	/* finally ACK all pending interrupts */
	FUNC4(irqs, host->base + MESON_MX_SDIO_IRQS);

	FUNC3(&host->irq_lock, irqflags);

	return ret;
}