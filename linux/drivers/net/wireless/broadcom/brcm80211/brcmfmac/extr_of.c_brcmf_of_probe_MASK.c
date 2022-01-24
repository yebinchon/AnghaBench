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
typedef  void* u32 ;
struct property {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct brcmfmac_sdio_pd {int oob_irq_supported; int oob_irq_nr; void* oob_irq_flags; void* drive_strength; } ;
struct TYPE_2__ {struct brcmfmac_sdio_pd sdio; } ;
struct brcmf_mp_device {int /*<<< orphan*/  board_type; TYPE_1__ bus; } ;
typedef  enum brcmf_bus_type { ____Placeholder_brcmf_bus_type } brcmf_bus_type ;

/* Variables and functions */
 int BRCMF_BUSTYPE_SDIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 struct device_node* FUNC5 (char*) ; 
 struct property* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct property*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,void**) ; 

void FUNC10(struct device *dev, enum brcmf_bus_type bus_type,
		    struct brcmf_mp_device *settings)
{
	struct brcmfmac_sdio_pd *sdio = &settings->bus.sdio;
	struct device_node *root, *np = dev->of_node;
	struct property *prop;
	int irq;
	u32 irqf;
	u32 val;

	/* Set board-type to the first string of the machine compatible prop */
	root = FUNC5("/");
	if (root) {
		prop = FUNC6(root, "compatible", NULL);
		settings->board_type = FUNC8(prop, NULL);
		FUNC7(root);
	}

	if (!np || bus_type != BRCMF_BUSTYPE_SDIO ||
	    !FUNC4(np, "brcm,bcm4329-fmac"))
		return;

	if (FUNC9(np, "brcm,drive-strength", &val) == 0)
		sdio->drive_strength = val;

	/* make sure there are interrupts defined in the node */
	if (!FUNC6(np, "interrupts", NULL))
		return;

	irq = FUNC2(np, 0);
	if (!irq) {
		FUNC0("interrupt could not be mapped\n");
		return;
	}
	irqf = FUNC3(FUNC1(irq));

	sdio->oob_irq_supported = true;
	sdio->oob_irq_nr = irq;
	sdio->oob_irq_flags = irqf;
}