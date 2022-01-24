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
struct TYPE_3__ {int disabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  active; } ;
struct cx8802_dev {TYPE_1__ state; int /*<<< orphan*/  core; int /*<<< orphan*/  slock; TYPE_2__ mpegq; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct cx8802_dev* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 scalar_t__ FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pci_dev, pm_message_t state)
{
	struct cx8802_dev *dev = FUNC6(pci_dev);
	unsigned long flags;

	/* stop mpeg dma */
	FUNC10(&dev->slock, flags);
	if (!FUNC3(&dev->mpegq.active)) {
		FUNC2(2, "suspend\n");
		FUNC9("suspend mpeg\n");
		FUNC0(dev);
	}
	FUNC11(&dev->slock, flags);

	/* FIXME -- shutdown device */
	FUNC1(dev->core);

	FUNC7(pci_dev);
	if (FUNC8(pci_dev,
				FUNC4(pci_dev, state)) != 0) {
		FUNC5(pci_dev);
		dev->state.disabled = 1;
	}
	return 0;
}