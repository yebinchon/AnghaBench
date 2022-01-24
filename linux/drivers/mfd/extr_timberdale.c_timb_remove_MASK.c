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
struct timberdale_device {int /*<<< orphan*/  ctl_mapbase; int /*<<< orphan*/  ctl_membase; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIPCTLSIZE ; 
 int /*<<< orphan*/  dev_attr_fw_ver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timberdale_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct timberdale_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct timberdale_device *priv = FUNC6(dev);

	FUNC3(&dev->dev);

	FUNC0(&dev->dev, &dev_attr_fw_ver);

	FUNC1(priv->ctl_membase);
	FUNC7(priv->ctl_mapbase, CHIPCTLSIZE);

	FUNC5(dev);
	FUNC4(dev);
	FUNC2(priv);
}