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
struct slic_shmem_data {int /*<<< orphan*/  isr; } ;
struct slic_shmem {struct slic_shmem_data* shmem_data; } ;
struct slic_device {int /*<<< orphan*/  napi; struct slic_shmem shmem; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SLIC_ICR_INT_MASK ; 
 int /*<<< orphan*/  SLIC_REG_ICR ; 
 int /*<<< orphan*/  SLIC_REG_ISR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct slic_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct slic_device *sdev = dev_id;
	struct slic_shmem *sm = &sdev->shmem;
	struct slic_shmem_data *sm_data = sm->shmem_data;

	FUNC3(sdev, SLIC_REG_ICR, SLIC_ICR_INT_MASK);
	FUNC2(sdev);
	/* make sure sm_data->isr is read after ICR_INT_MASK is set */
	FUNC4();

	if (!sm_data->isr) {
		FUNC0();
		/* spurious interrupt */
		FUNC3(sdev, SLIC_REG_ISR, 0);
		FUNC2(sdev);
		return IRQ_NONE;
	}

	FUNC1(&sdev->napi);

	return IRQ_HANDLED;
}