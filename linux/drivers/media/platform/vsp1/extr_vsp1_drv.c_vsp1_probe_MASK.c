#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct vsp1_device {int version; TYPE_1__* info; TYPE_2__* dev; TYPE_2__* bus_master; int /*<<< orphan*/  fcp; int /*<<< orphan*/  mmio; int /*<<< orphan*/  videos; int /*<<< orphan*/  entities; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_14__ {int version; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VI6_IP_VERSION ; 
 int VI6_IP_VERSION_MODEL_MASK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct resource*) ; 
 struct vsp1_device* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vsp1_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct vsp1_device*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (struct vsp1_device*) ; 
 TYPE_1__* vsp1_device_infos ; 
 int /*<<< orphan*/  vsp1_irq_handler ; 
 int FUNC21 (struct vsp1_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct vsp1_device *vsp1;
	struct device_node *fcp_node;
	struct resource *irq;
	struct resource *io;
	unsigned int i;
	int ret;

	vsp1 = FUNC8(&pdev->dev, sizeof(*vsp1), GFP_KERNEL);
	if (vsp1 == NULL)
		return -ENOMEM;

	vsp1->dev = &pdev->dev;
	FUNC1(&vsp1->entities);
	FUNC1(&vsp1->videos);

	FUNC13(pdev, vsp1);

	/* I/O and IRQ resources (clock managed by the clock PM domain). */
	io = FUNC12(pdev, IORESOURCE_MEM, 0);
	vsp1->mmio = FUNC7(&pdev->dev, io);
	if (FUNC2(vsp1->mmio))
		return FUNC3(vsp1->mmio);

	irq = FUNC12(pdev, IORESOURCE_IRQ, 0);
	if (!irq) {
		FUNC5(&pdev->dev, "missing IRQ\n");
		return -EINVAL;
	}

	ret = FUNC9(&pdev->dev, irq->start, vsp1_irq_handler,
			      IRQF_SHARED, FUNC6(&pdev->dev), vsp1);
	if (ret < 0) {
		FUNC5(&pdev->dev, "failed to request IRQ\n");
		return ret;
	}

	/* FCP (optional). */
	fcp_node = FUNC11(pdev->dev.of_node, "renesas,fcp", 0);
	if (fcp_node) {
		vsp1->fcp = FUNC18(fcp_node);
		FUNC10(fcp_node);
		if (FUNC2(vsp1->fcp)) {
			FUNC4(&pdev->dev, "FCP not found (%ld)\n",
				FUNC3(vsp1->fcp));
			return FUNC3(vsp1->fcp);
		}

		/*
		 * When the FCP is present, it handles all bus master accesses
		 * for the VSP and must thus be used in place of the VSP device
		 * to map DMA buffers.
		 */
		vsp1->bus_master = FUNC19(vsp1->fcp);
	} else {
		vsp1->bus_master = vsp1->dev;
	}

	/* Configure device parameters based on the version register. */
	FUNC15(&pdev->dev);

	ret = FUNC16(&pdev->dev);
	if (ret < 0)
		goto done;

	vsp1->version = FUNC21(vsp1, VI6_IP_VERSION);
	FUNC17(&pdev->dev);

	for (i = 0; i < FUNC0(vsp1_device_infos); ++i) {
		if ((vsp1->version & VI6_IP_VERSION_MODEL_MASK) ==
		    vsp1_device_infos[i].version) {
			vsp1->info = &vsp1_device_infos[i];
			break;
		}
	}

	if (!vsp1->info) {
		FUNC5(&pdev->dev, "unsupported IP version 0x%08x\n",
			vsp1->version);
		ret = -ENXIO;
		goto done;
	}

	FUNC4(&pdev->dev, "IP version 0x%08x\n", vsp1->version);

	/* Instantiate entities. */
	ret = FUNC20(vsp1);
	if (ret < 0) {
		FUNC5(&pdev->dev, "failed to create entities\n");
		goto done;
	}

done:
	if (ret)
		FUNC14(&pdev->dev);

	return ret;
}