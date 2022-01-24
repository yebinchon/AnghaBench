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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct cmodio_device {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmodio_sysfs_attr_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct cmodio_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct cmodio_device *priv = FUNC3(dev);

	FUNC1(&dev->dev);
	FUNC5(&dev->dev.kobj, &cmodio_sysfs_attr_group);
	FUNC0(priv->ctrl);
	FUNC4(dev);
	FUNC2(dev);
}