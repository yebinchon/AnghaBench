#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct venc_state {scalar_t__ venc_type; TYPE_1__* pdev; int /*<<< orphan*/  lock; void* vdaccfg_reg; void* venc_base; scalar_t__ pdata; } ;
struct resource {int dummy; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ VPBE_VERSION_1 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 void* FUNC4 (TYPE_1__*,struct resource*) ; 
 struct venc_state* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct platform_device_id* FUNC6 (struct platform_device*) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct venc_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	const struct platform_device_id *pdev_id;
	struct venc_state *venc;
	struct resource *res;

	if (!pdev->dev.platform_data) {
		FUNC2(&pdev->dev, "No platform data for VENC sub device");
		return -EINVAL;
	}

	pdev_id = FUNC6(pdev);
	if (!pdev_id)
		return -EINVAL;

	venc = FUNC5(&pdev->dev, sizeof(struct venc_state), GFP_KERNEL);
	if (venc == NULL)
		return -ENOMEM;

	venc->venc_type = pdev_id->driver_data;
	venc->pdev = &pdev->dev;
	venc->pdata = pdev->dev.platform_data;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);

	venc->venc_base = FUNC4(&pdev->dev, res);
	if (FUNC0(venc->venc_base))
		return FUNC1(venc->venc_base);

	if (venc->venc_type != VPBE_VERSION_1) {
		res = FUNC7(pdev, IORESOURCE_MEM, 1);

		venc->vdaccfg_reg = FUNC4(&pdev->dev, res);
		if (FUNC0(venc->vdaccfg_reg))
			return FUNC1(venc->vdaccfg_reg);
	}
	FUNC9(&venc->lock);
	FUNC8(pdev, venc);
	FUNC3(venc->pdev, "VENC sub device probe success\n");

	return 0;
}