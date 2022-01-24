#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_7__ dev; } ;
struct TYPE_16__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_15__ {void* vdd; } ;
struct TYPE_14__ {void* vdd; } ;
struct isp_device {int revision; int irq_num; int /*<<< orphan*/  isp_mutex; TYPE_3__ notifier; int /*<<< orphan*/  v4l2_dev; TYPE_7__* dev; scalar_t__ mmio_hist_base_phys; scalar_t__* mmio_base; int /*<<< orphan*/ * clock; TYPE_2__ isp_csiphy2; TYPE_1__ isp_csiphy1; scalar_t__ ref_count; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  autoidle; int /*<<< orphan*/  syscon_offset; scalar_t__ syscon; int /*<<< orphan*/  phy_type; } ;
struct TYPE_17__ {int isp_rev; scalar_t__* offset; } ;

/* Variables and functions */
 int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 size_t ISP_CLK_CAM_ICK ; 
 int /*<<< orphan*/  ISP_REVISION ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int OMAP3_ISP_IOMEM_CSI2A_REGS1 ; 
 int OMAP3_ISP_IOMEM_CSIPHY2 ; 
 size_t OMAP3_ISP_IOMEM_HIST ; 
 int OMAP3_ISP_IOMEM_LAST ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_MAIN ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (struct isp_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_device*,int) ; 
 int /*<<< orphan*/  autoidle ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,char*,int,int) ; 
 scalar_t__ FUNC10 (TYPE_7__*,struct resource*) ; 
 void* FUNC11 (TYPE_7__*,char*) ; 
 scalar_t__ FUNC12 (TYPE_7__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct isp_device*) ; 
 int FUNC13 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct isp_device*,int) ; 
 int FUNC18 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct isp_device*) ; 
 int FUNC20 (struct isp_device*) ; 
 int FUNC21 (struct isp_device*) ; 
 int /*<<< orphan*/  isp_isr ; 
 int FUNC22 (struct isp_device*) ; 
 int FUNC23 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct isp_device*) ; 
 TYPE_6__* isp_res_maps ; 
 int FUNC25 (struct isp_device*) ; 
 int /*<<< orphan*/  isp_subdev_notifier_ops ; 
 int /*<<< orphan*/  FUNC26 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct isp_device*) ; 
 int FUNC28 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct isp_device*) ; 
 struct isp_device* FUNC30 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (struct isp_device*) ; 
 int FUNC36 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC37 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC38 (struct platform_device*,struct isp_device*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC42 (TYPE_3__*) ; 
 int FUNC43 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC44(struct platform_device *pdev)
{
	struct isp_device *isp;
	struct resource *mem;
	int ret;
	int i, m;

	isp = FUNC30(sizeof(*isp), GFP_KERNEL);
	if (!isp) {
		FUNC8(&pdev->dev, "could not allocate memory\n");
		return -ENOMEM;
	}

	ret = FUNC14(FUNC33(pdev->dev.of_node),
				       "ti,phy-type", &isp->phy_type);
	if (ret)
		goto error_release_isp;

	isp->syscon = FUNC40(pdev->dev.of_node,
						      "syscon");
	if (FUNC2(isp->syscon)) {
		ret = FUNC3(isp->syscon);
		goto error_release_isp;
	}

	ret = FUNC34(pdev->dev.of_node,
					 "syscon", 1, &isp->syscon_offset);
	if (ret)
		goto error_release_isp;

	isp->autoidle = autoidle;

	FUNC32(&isp->isp_mutex);
	FUNC39(&isp->stat_lock);
	FUNC42(&isp->notifier);
	isp->dev = &pdev->dev;

	ret = FUNC22(isp);
	if (ret < 0)
		goto error;

	isp->ref_count = 0;

	ret = FUNC13(isp->dev, FUNC1(32));
	if (ret)
		goto error;

	FUNC38(pdev, isp);

	/* Regulators */
	isp->isp_csiphy1.vdd = FUNC11(&pdev->dev, "vdd-csiphy1");
	isp->isp_csiphy2.vdd = FUNC11(&pdev->dev, "vdd-csiphy2");

	/* Clocks
	 *
	 * The ISP clock tree is revision-dependent. We thus need to enable ICLK
	 * manually to read the revision before calling __omap3isp_get().
	 *
	 * Start by mapping the ISP MMIO area, which is in two pieces.
	 * The ISP IOMMU is in between. Map both now, and fill in the
	 * ISP revision specific portions a little later in the
	 * function.
	 */
	for (i = 0; i < 2; i++) {
		unsigned int map_idx = i ? OMAP3_ISP_IOMEM_CSI2A_REGS1 : 0;

		mem = FUNC37(pdev, IORESOURCE_MEM, i);
		isp->mmio_base[map_idx] =
			FUNC10(isp->dev, mem);
		if (FUNC2(isp->mmio_base[map_idx]))
			return FUNC3(isp->mmio_base[map_idx]);
	}

	ret = FUNC20(isp);
	if (ret < 0)
		goto error;

	ret = FUNC7(isp->clock[ISP_CLK_CAM_ICK]);
	if (ret < 0)
		goto error;

	isp->revision = FUNC23(isp, OMAP3_ISP_IOMEM_MAIN, ISP_REVISION);
	FUNC9(isp->dev, "Revision %d.%d found\n",
		 (isp->revision & 0xf0) >> 4, isp->revision & 0x0f);

	FUNC6(isp->clock[ISP_CLK_CAM_ICK]);

	if (FUNC4(isp, false) == NULL) {
		ret = -ENODEV;
		goto error;
	}

	ret = FUNC25(isp);
	if (ret < 0)
		goto error_isp;

	ret = FUNC28(isp);
	if (ret < 0)
		goto error_isp;

	/* Memory resources */
	for (m = 0; m < FUNC0(isp_res_maps); m++)
		if (isp->revision == isp_res_maps[m].isp_rev)
			break;

	if (m == FUNC0(isp_res_maps)) {
		FUNC8(isp->dev, "No resource map found for ISP rev %d.%d\n",
			(isp->revision & 0xf0) >> 4, isp->revision & 0xf);
		ret = -ENODEV;
		goto error_isp;
	}

	for (i = 1; i < OMAP3_ISP_IOMEM_CSI2A_REGS1; i++)
		isp->mmio_base[i] =
			isp->mmio_base[0] + isp_res_maps[m].offset[i];

	for (i = OMAP3_ISP_IOMEM_CSIPHY2; i < OMAP3_ISP_IOMEM_LAST; i++)
		isp->mmio_base[i] =
			isp->mmio_base[OMAP3_ISP_IOMEM_CSI2A_REGS1]
			+ isp_res_maps[m].offset[i];

	isp->mmio_hist_base_phys =
		mem->start + isp_res_maps[m].offset[OMAP3_ISP_IOMEM_HIST];

	/* IOMMU */
	ret = FUNC15(isp);
	if (ret < 0) {
		FUNC8(&pdev->dev, "unable to attach to IOMMU\n");
		goto error_isp;
	}

	/* Interrupt */
	ret = FUNC36(pdev, 0);
	if (ret <= 0) {
		ret = -ENODEV;
		goto error_iommu;
	}
	isp->irq_num = ret;

	if (FUNC12(isp->dev, isp->irq_num, isp_isr, IRQF_SHARED,
			     "OMAP3 ISP", isp)) {
		FUNC8(isp->dev, "Unable to request IRQ\n");
		ret = -EINVAL;
		goto error_iommu;
	}

	/* Entities */
	ret = FUNC21(isp);
	if (ret < 0)
		goto error_iommu;

	ret = FUNC24(isp);
	if (ret < 0)
		goto error_modules;

	ret = FUNC18(isp);
	if (ret < 0)
		goto error_register_entities;

	isp->notifier.ops = &isp_subdev_notifier_ops;

	ret = FUNC43(&isp->v4l2_dev, &isp->notifier);
	if (ret)
		goto error_register_entities;

	FUNC17(isp, 1);
	FUNC35(isp);

	return 0;

error_register_entities:
	FUNC26(isp);
error_modules:
	FUNC16(isp);
error_iommu:
	FUNC19(isp);
error_isp:
	FUNC27(isp);
	FUNC5(isp, false);
error:
	FUNC41(&isp->notifier);
	FUNC31(&isp->isp_mutex);
error_release_isp:
	FUNC29(isp);

	return ret;
}