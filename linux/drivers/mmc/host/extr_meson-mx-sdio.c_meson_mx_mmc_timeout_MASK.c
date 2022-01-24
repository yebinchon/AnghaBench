#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct timer_list {int dummy; } ;
struct meson_mx_mmc_host {TYPE_1__* cmd; scalar_t__ base; int /*<<< orphan*/  mmc; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ MESON_MX_SDIO_ARGU ; 
 scalar_t__ MESON_MX_SDIO_IRQC ; 
 int /*<<< orphan*/  MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN ; 
 scalar_t__ MESON_MX_SDIO_IRQS ; 
 int /*<<< orphan*/  cmd_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct meson_mx_mmc_host* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct meson_mx_mmc_host* host ; 
 int /*<<< orphan*/  FUNC2 (struct meson_mx_mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct meson_mx_mmc_host *host = FUNC1(host, t, cmd_timeout);
	unsigned long irqflags;
	u32 irqc;

	FUNC5(&host->irq_lock, irqflags);

	/* disable the CMD interrupt */
	irqc = FUNC4(host->base + MESON_MX_SDIO_IRQC);
	irqc &= ~MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN;
	FUNC7(irqc, host->base + MESON_MX_SDIO_IRQC);

	FUNC6(&host->irq_lock, irqflags);

	/*
	 * skip the timeout handling if the interrupt handler already processed
	 * the command.
	 */
	if (!host->cmd)
		return;

	FUNC0(FUNC3(host->mmc),
		"Timeout on CMD%u (IRQS = 0x%08x, ARGU = 0x%08x)\n",
		host->cmd->opcode, FUNC4(host->base + MESON_MX_SDIO_IRQS),
		FUNC4(host->base + MESON_MX_SDIO_ARGU));

	host->cmd->error = -ETIMEDOUT;

	FUNC2(host);
}