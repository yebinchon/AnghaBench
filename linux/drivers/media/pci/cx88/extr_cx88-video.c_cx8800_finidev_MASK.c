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
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct cx88_core {int /*<<< orphan*/ * v4ldev; scalar_t__ ir; int /*<<< orphan*/ * kthread; } ;
struct cx8800_dev {int /*<<< orphan*/  pci; struct cx88_core* core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx8800_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct cx8800_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct cx8800_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct cx8800_dev* FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pci_dev)
{
	struct cx8800_dev *dev = FUNC8(pci_dev);
	struct cx88_core *core = dev->core;

	/* stop thread */
	if (core->kthread) {
		FUNC6(core->kthread);
		core->kthread = NULL;
	}

	if (core->ir)
		FUNC2(core);

	FUNC3(core); /* FIXME */

	/* unregister stuff */

	FUNC4(pci_dev->irq, dev);
	FUNC0(dev);
	FUNC7(pci_dev);

	core->v4ldev = NULL;

	/* free memory */
	FUNC1(core, dev->pci);
	FUNC5(dev);
}