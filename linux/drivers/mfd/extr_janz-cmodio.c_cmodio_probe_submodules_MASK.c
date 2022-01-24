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
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct cmodio_device {int /*<<< orphan*/  cells; struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct cmodio_device*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** modules ; 
 int num_modules ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(struct cmodio_device *priv)
{
	struct pci_dev *pdev = priv->pdev;
	unsigned int num_probed = 0;
	char *name;
	int i;

	for (i = 0; i < num_modules; i++) {
		name = modules[i];
		if (!FUNC4(name, "") || !FUNC4(name, "empty"))
			continue;

		FUNC1(&priv->pdev->dev, "MODULbus %d: name %s\n", i, name);
		FUNC0(priv, name, num_probed, i);
		num_probed++;
	}

	/* print an error message if no modules were probed */
	if (num_probed == 0) {
		FUNC2(&priv->pdev->dev, "no MODULbus modules specified, "
					  "please set the ``modules'' kernel "
					  "parameter according to your "
					  "hardware configuration\n");
		return -ENODEV;
	}

	return FUNC3(&pdev->dev, 0, priv->cells,
			       num_probed, NULL, pdev->irq, NULL);
}