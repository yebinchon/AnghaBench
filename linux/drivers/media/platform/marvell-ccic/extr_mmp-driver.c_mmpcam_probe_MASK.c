#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; struct mmp_camera_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct mmp_camera_platform_data {int mclk_src; int mclk_div; scalar_t__ bus_type; scalar_t__* dphy; int /*<<< orphan*/  lane; } ;
struct TYPE_8__ {struct fwnode_handle* fwnode; } ;
struct TYPE_9__ {TYPE_1__ match; int /*<<< orphan*/  match_type; } ;
struct mcam_camera {int mclk_src; int mclk_div; scalar_t__ bus_type; scalar_t__* dphy; int mipi_enabled; TYPE_2__ asd; int /*<<< orphan*/  mclk; int /*<<< orphan*/  regs_size; int /*<<< orphan*/  regs; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  buffer_mode; int /*<<< orphan*/  chip_id; TYPE_3__* dev; int /*<<< orphan*/  lane; int /*<<< orphan*/  calc_dphy; } ;
struct mmp_camera {int /*<<< orphan*/  irq; int /*<<< orphan*/  mipi_clk; struct mcam_camera mcam; int /*<<< orphan*/  devlist; struct platform_device* pdev; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_DMA_sg ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCAM_ARMADA610 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct resource*) ; 
 struct mmp_camera* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mcam_camera*) ; 
 struct fwnode_handle* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC9 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC10 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct mcam_camera*) ; 
 int FUNC12 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC13 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC14 (struct mmp_camera*) ; 
 int /*<<< orphan*/  mmpcam_calc_dphy ; 
 int /*<<< orphan*/  mmpcam_irq ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct resource*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct mmp_camera *cam;
	struct mcam_camera *mcam;
	struct resource *res;
	struct fwnode_handle *ep;
	struct mmp_camera_platform_data *pdata;
	int ret;

	cam = FUNC6(&pdev->dev, sizeof(*cam), GFP_KERNEL);
	if (cam == NULL)
		return -ENOMEM;
	cam->pdev = pdev;
	FUNC0(&cam->devlist);

	mcam = &cam->mcam;
	mcam->calc_dphy = mmpcam_calc_dphy;
	mcam->dev = &pdev->dev;
	pdata = pdev->dev.platform_data;
	if (pdata) {
		mcam->mclk_src = pdata->mclk_src;
		mcam->mclk_div = pdata->mclk_div;
		mcam->bus_type = pdata->bus_type;
		mcam->dphy = pdata->dphy;
		mcam->lane = pdata->lane;
	} else {
		/*
		 * These are values that used to be hardcoded in mcam-core and
		 * work well on a OLPC XO 1.75 with a parallel bus sensor.
		 * If it turns out other setups make sense, the values should
		 * be obtained from the device tree.
		 */
		mcam->mclk_src = 3;
		mcam->mclk_div = 2;
	}
	if (mcam->bus_type == V4L2_MBUS_CSI2_DPHY) {
		cam->mipi_clk = FUNC4(mcam->dev, "mipi");
		if ((FUNC1(cam->mipi_clk) && mcam->dphy[2] == 0))
			return FUNC2(cam->mipi_clk);
	}
	mcam->mipi_enabled = false;
	mcam->chip_id = MCAM_ARMADA610;
	mcam->buffer_mode = B_DMA_sg;
	FUNC20(mcam->bus_info, "platform:mmp-camera", sizeof(mcam->bus_info));
	FUNC19(&mcam->dev_lock);
	/*
	 * Get our I/O memory.
	 */
	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	mcam->regs = FUNC5(&pdev->dev, res);
	if (FUNC1(mcam->regs))
		return FUNC2(mcam->regs);
	mcam->regs_size = FUNC18(res);

	FUNC11(mcam);

	/*
	 * Create a match of the sensor against its OF node.
	 */
	ep = FUNC8(FUNC16(pdev->dev.of_node),
					    NULL);
	if (!ep)
		return -ENODEV;

	mcam->asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
	mcam->asd.match.fwnode = FUNC9(ep);

	FUNC10(ep);

	/*
	 * Register the device with the core.
	 */
	ret = FUNC12(mcam);
	if (ret)
		return ret;

	/*
	 * Add OF clock provider.
	 */
	ret = FUNC15(pdev->dev.of_node, of_clk_src_simple_get,
								mcam->mclk);
	if (ret) {
		FUNC3(&pdev->dev, "can't add DT clock provider\n");
		goto out;
	}

	/*
	 * Finally, set up our IRQ now that the core is ready to
	 * deal with it.
	 */
	res = FUNC17(pdev, IORESOURCE_IRQ, 0);
	if (res == NULL) {
		ret = -ENODEV;
		goto out;
	}
	cam->irq = res->start;
	ret = FUNC7(&pdev->dev, cam->irq, mmpcam_irq, IRQF_SHARED,
					"mmp-camera", mcam);
	if (ret == 0) {
		FUNC14(cam);
		return 0;
	}

out:
	FUNC10(mcam->asd.match.fwnode);
	FUNC13(mcam);

	return ret;
}