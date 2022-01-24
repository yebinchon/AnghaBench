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
typedef  int u16 ;
struct netup_unidvb_dev {struct netup_spi* spi; } ;
struct netup_spi {int /*<<< orphan*/  master; int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  control_stat; } ;

/* Variables and functions */
 int NETUP_SPI_CTRL_IMASK ; 
 int NETUP_SPI_CTRL_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

void FUNC5(struct netup_unidvb_dev *ndev)
{
	u16 reg;
	unsigned long flags;
	struct netup_spi *spi = ndev->spi;

	if (!spi)
		return;

	FUNC2(&spi->lock, flags);
	reg = FUNC0(&spi->regs->control_stat);
	FUNC4(reg | NETUP_SPI_CTRL_IRQ, &spi->regs->control_stat);
	reg = FUNC0(&spi->regs->control_stat);
	FUNC4(reg & ~NETUP_SPI_CTRL_IMASK, &spi->regs->control_stat);
	FUNC3(&spi->lock, flags);
	FUNC1(spi->master);
	ndev->spi = NULL;
}