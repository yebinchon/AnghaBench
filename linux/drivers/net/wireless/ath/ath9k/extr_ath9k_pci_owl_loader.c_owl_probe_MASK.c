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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct owl_ctx {int /*<<< orphan*/  eeprom_load; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct owl_ctx* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  owl_fw_cb ; 
 char* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,struct owl_ctx*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev,
		     const struct pci_device_id *id)
{
	struct owl_ctx *ctx;
	const char *eeprom_name;
	int err = 0;

	if (FUNC5(pdev))
		return -EIO;

	FUNC6(pdev);

	eeprom_name = FUNC3(pdev);
	if (!eeprom_name) {
		FUNC0(&pdev->dev, "no eeprom filename found.\n");
		return -ENODEV;
	}

	ctx = FUNC1(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC2(&ctx->eeprom_load);

	FUNC4(pdev, ctx);
	err = FUNC7(THIS_MODULE, true, eeprom_name,
				      &pdev->dev, GFP_KERNEL, pdev, owl_fw_cb);
	if (err)
		FUNC0(&pdev->dev, "failed to request caldata (%d).\n", err);

	return err;
}