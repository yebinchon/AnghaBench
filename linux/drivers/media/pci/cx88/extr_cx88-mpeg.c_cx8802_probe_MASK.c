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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mpeg; } ;
struct cx88_core {struct cx8802_dev* dvbdev; TYPE_1__ board; } ;
struct cx8802_dev {int /*<<< orphan*/  devlist; int /*<<< orphan*/  drvlist; struct cx88_core* core; struct pci_dev* pci; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cx8802_devlist ; 
 int FUNC1 (struct cx8802_dev*) ; 
 int /*<<< orphan*/  cx8802_mutex ; 
 struct cx88_core* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cx88_core*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx8802_dev*) ; 
 struct cx8802_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct cx8802_dev*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pci_dev,
			const struct pci_device_id *pci_id)
{
	struct cx8802_dev *dev;
	struct cx88_core  *core;
	int err;

	/* general setup */
	core = FUNC2(pci_dev);
	if (!core)
		return -EINVAL;

	FUNC9("cx2388x 8802 Driver Manager\n");

	err = -ENODEV;
	if (!core->board.mpeg)
		goto fail_core;

	err = -ENOMEM;
	dev = FUNC5(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		goto fail_core;
	dev->pci = pci_dev;
	dev->core = core;

	/* Maintain a reference so cx88-video can query the 8802 device. */
	core->dvbdev = dev;

	err = FUNC1(dev);
	if (err != 0)
		goto fail_dev;

	FUNC0(&dev->drvlist);
	FUNC7(&cx8802_mutex);
	FUNC6(&dev->devlist, &cx8802_devlist);
	FUNC8(&cx8802_mutex);

	/* now autoload cx88-dvb or cx88-blackbird */
	FUNC10(dev);
	return 0;

 fail_dev:
	FUNC4(dev);
 fail_core:
	core->dvbdev = NULL;
	FUNC3(core, pci_dev);
	return err;
}