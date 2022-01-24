#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  active; } ;
struct TYPE_3__ {int disabled; } ;
struct cx8802_dev {int /*<<< orphan*/  slock; TYPE_2__ mpegq; int /*<<< orphan*/  core; TYPE_1__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 struct cx8802_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pci_dev)
{
	struct cx8802_dev *dev = FUNC5(pci_dev);
	unsigned long flags;
	int err;

	if (dev->state.disabled) {
		err = FUNC4(pci_dev);
		if (err) {
			FUNC8("can't enable device\n");
			return err;
		}
		dev->state.disabled = 0;
	}
	err = FUNC7(pci_dev, PCI_D0);
	if (err) {
		FUNC8("can't enable device\n");
		FUNC3(pci_dev);
		dev->state.disabled = 1;

		return err;
	}
	FUNC6(pci_dev);

	/* FIXME: re-initialize hardware */
	FUNC1(dev->core);

	/* restart video+vbi capture */
	FUNC10(&dev->slock, flags);
	if (!FUNC2(&dev->mpegq.active)) {
		FUNC9("resume mpeg\n");
		FUNC0(dev, &dev->mpegq);
	}
	FUNC11(&dev->slock, flags);

	return 0;
}