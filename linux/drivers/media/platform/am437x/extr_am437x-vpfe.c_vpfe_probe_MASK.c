#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  base_addr; } ;
struct vpfe_ccdc {TYPE_1__ ccdc_cfg; } ;
struct vpfe_device {int irq; TYPE_2__ notifier; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  sd; struct vpfe_config* cfg; int /*<<< orphan*/ * pdev; struct vpfe_ccdc ccdc; } ;
struct vpfe_config {int /*<<< orphan*/  asd; } ;
struct v4l2_subdev {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct vpfe_device* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vpfe_device*) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct vpfe_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vpfe_async_ops ; 
 int /*<<< orphan*/  FUNC18 (struct vpfe_ccdc*) ; 
 int /*<<< orphan*/  FUNC19 (struct vpfe_device*,char*) ; 
 struct vpfe_config* FUNC20 (struct vpfe_device*) ; 
 int /*<<< orphan*/  vpfe_isr ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct vpfe_config *vpfe_cfg;
	struct vpfe_device *vpfe;
	struct vpfe_ccdc *ccdc;
	struct resource	*res;
	int ret;

	vpfe = FUNC6(&pdev->dev, sizeof(*vpfe), GFP_KERNEL);
	if (!vpfe)
		return -ENOMEM;

	vpfe->pdev = &pdev->dev;

	vpfe_cfg = FUNC20(vpfe);
	if (!vpfe_cfg) {
		FUNC3(&pdev->dev, "No platform data\n");
		return -EINVAL;
	}

	vpfe->cfg = vpfe_cfg;
	ccdc = &vpfe->ccdc;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	ccdc->ccdc_cfg.base_addr = FUNC4(&pdev->dev, res);
	if (FUNC1(ccdc->ccdc_cfg.base_addr)) {
		ret = FUNC2(ccdc->ccdc_cfg.base_addr);
		goto probe_out_cleanup;
	}

	ret = FUNC8(pdev, 0);
	if (ret <= 0) {
		ret = -ENODEV;
		goto probe_out_cleanup;
	}
	vpfe->irq = ret;

	ret = FUNC7(vpfe->pdev, vpfe->irq, vpfe_isr, 0,
			       "vpfe_capture0", vpfe);
	if (ret) {
		FUNC3(&pdev->dev, "Unable to request interrupt\n");
		ret = -EINVAL;
		goto probe_out_cleanup;
	}

	ret = FUNC16(&pdev->dev, &vpfe->v4l2_dev);
	if (ret) {
		FUNC19(vpfe,
			"Unable to register v4l2 device.\n");
		goto probe_out_cleanup;
	}

	/* set the driver data in platform device */
	FUNC10(pdev, vpfe);
	/* Enabling module functional clock */
	FUNC11(&pdev->dev);

	/* for now just enable it here instead of waiting for the open */
	FUNC12(&pdev->dev);

	FUNC18(ccdc);

	FUNC13(&pdev->dev);

	vpfe->sd = FUNC5(&pdev->dev,
				FUNC0(vpfe->cfg->asd),
				sizeof(struct v4l2_subdev *),
				GFP_KERNEL);
	if (!vpfe->sd) {
		ret = -ENOMEM;
		goto probe_out_v4l2_unregister;
	}

	vpfe->notifier.ops = &vpfe_async_ops;
	ret = FUNC15(&vpfe->v4l2_dev, &vpfe->notifier);
	if (ret) {
		FUNC19(vpfe, "Error registering async notifier\n");
		ret = -EINVAL;
		goto probe_out_v4l2_unregister;
	}

	return 0;

probe_out_v4l2_unregister:
	FUNC17(&vpfe->v4l2_dev);
probe_out_cleanup:
	FUNC14(&vpfe->notifier);
	return ret;
}