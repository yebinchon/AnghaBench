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
struct fsl_mc_device_irq {TYPE_1__* msi_desc; } ;
struct fsl_mc_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  mc_handle; int /*<<< orphan*/  mc_io; struct fsl_mc_device_irq** irqs; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int DPNI_IRQ_EVENT_ENDPOINT_CHANGED ; 
 int DPNI_IRQ_EVENT_LINK_CHANGED ; 
 int /*<<< orphan*/  DPNI_IRQ_INDEX ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dpni_irq0_handler_thread ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC8(struct fsl_mc_device *ls_dev)
{
	int err = 0;
	struct fsl_mc_device_irq *irq;

	err = FUNC6(ls_dev);
	if (err) {
		FUNC0(&ls_dev->dev, "MC irqs allocation failed\n");
		return err;
	}

	irq = ls_dev->irqs[0];
	err = FUNC3(&ls_dev->dev, irq->msi_desc->irq,
					NULL, dpni_irq0_handler_thread,
					IRQF_NO_SUSPEND | IRQF_ONESHOT,
					FUNC1(&ls_dev->dev), &ls_dev->dev);
	if (err < 0) {
		FUNC0(&ls_dev->dev, "devm_request_threaded_irq(): %d\n", err);
		goto free_mc_irq;
	}

	err = FUNC5(ls_dev->mc_io, 0, ls_dev->mc_handle,
				DPNI_IRQ_INDEX, DPNI_IRQ_EVENT_LINK_CHANGED |
				DPNI_IRQ_EVENT_ENDPOINT_CHANGED);
	if (err < 0) {
		FUNC0(&ls_dev->dev, "dpni_set_irq_mask(): %d\n", err);
		goto free_irq;
	}

	err = FUNC4(ls_dev->mc_io, 0, ls_dev->mc_handle,
				  DPNI_IRQ_INDEX, 1);
	if (err < 0) {
		FUNC0(&ls_dev->dev, "dpni_set_irq_enable(): %d\n", err);
		goto free_irq;
	}

	return 0;

free_irq:
	FUNC2(&ls_dev->dev, irq->msi_desc->irq, &ls_dev->dev);
free_mc_irq:
	FUNC7(ls_dev);

	return err;
}