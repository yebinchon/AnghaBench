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
struct vub300_mmc_host {int irq_enabled; int /*<<< orphan*/  kref; int /*<<< orphan*/  irq_mutex; scalar_t__ irq_disabled; int /*<<< orphan*/  mmc; scalar_t__ irqs_queued; int /*<<< orphan*/  interface; } ;
struct mmc_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vub300_mmc_host* FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vub300_delete ; 
 int /*<<< orphan*/  FUNC6 (struct vub300_mmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mmc_host *mmc, int enable)
{				/* NOT irq */
	struct vub300_mmc_host *vub300 = FUNC2(mmc);
	if (!vub300->interface)
		return;
	FUNC0(&vub300->kref);
	if (enable) {
		FUNC4(&vub300->irq_mutex);
		if (vub300->irqs_queued) {
			vub300->irqs_queued -= 1;
			FUNC3(vub300->mmc);
		} else if (vub300->irq_disabled) {
			vub300->irq_disabled = 0;
			vub300->irq_enabled = 1;
			FUNC6(vub300, 0);
		} else if (vub300->irq_enabled) {
			/* this should not happen, so we will just ignore it */
		} else {
			vub300->irq_enabled = 1;
			FUNC6(vub300, 0);
		}
		FUNC5(&vub300->irq_mutex);
	} else {
		vub300->irq_enabled = 0;
	}
	FUNC1(&vub300->kref, vub300_delete);
}