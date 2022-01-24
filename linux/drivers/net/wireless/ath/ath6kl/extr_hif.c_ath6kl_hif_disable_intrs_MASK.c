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
struct ath6kl_irq_enable_reg {int /*<<< orphan*/  int_status_en; } ;
struct TYPE_2__ {scalar_t__ cntr_int_status_en; scalar_t__ err_int_status_en; scalar_t__ cpu_int_status_en; scalar_t__ int_status_en; } ;
struct ath6kl_device {int /*<<< orphan*/  ar; int /*<<< orphan*/  lock; TYPE_1__ irq_en_reg; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_WR_SYNC_BYTE_INC ; 
 int /*<<< orphan*/  INT_STATUS_ENABLE_ADDRESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_irq_enable_reg*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ath6kl_device *dev)
{
	struct ath6kl_irq_enable_reg regs;

	FUNC2(&dev->lock);
	/* Disable all interrupts */
	dev->irq_en_reg.int_status_en = 0;
	dev->irq_en_reg.cpu_int_status_en = 0;
	dev->irq_en_reg.err_int_status_en = 0;
	dev->irq_en_reg.cntr_int_status_en = 0;
	FUNC1(&regs, &dev->irq_en_reg, sizeof(regs));
	FUNC3(&dev->lock);

	return FUNC0(dev->ar, INT_STATUS_ENABLE_ADDRESS,
				   &regs.int_status_en, sizeof(regs),
				   HIF_WR_SYNC_BYTE_INC);
}