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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {struct pci_bus* bus; int /*<<< orphan*/  dev; } ;
struct pci_bus {int dummy; } ;
struct owl_ctx {int /*<<< orphan*/  eeprom_load; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_dev*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 

__attribute__((used)) static void FUNC9(const struct firmware *fw, void *context)
{
	struct pci_dev *pdev = (struct pci_dev *)context;
	struct owl_ctx *ctx = (struct owl_ctx *)FUNC3(pdev);
	struct pci_bus *bus;

	FUNC1(&ctx->eeprom_load);

	if (!fw) {
		FUNC2(&pdev->dev, "no eeprom data received.\n");
		goto release;
	}

	/* also note that we are doing *u16 operations on the file */
	if (fw->size > 4096 || fw->size < 0x200 || (fw->size & 1) == 1) {
		FUNC2(&pdev->dev, "eeprom file has an invalid size.\n");
		goto release;
	}

	if (FUNC0(pdev, (const u16 *)fw->data, fw->size))
		goto release;

	FUNC4();
	bus = pdev->bus;
	FUNC6(pdev);
	/* the device should come back with the proper
	 * ProductId. But we have to initiate a rescan.
	 */
	FUNC5(bus);
	FUNC7();

release:
	FUNC8(fw);
}