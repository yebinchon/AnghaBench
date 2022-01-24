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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dsaf_drv_priv {int dummy; } ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dsaf_device*) ; 
 int FUNC1 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct dsaf_device*) ; 
 struct dsaf_device* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dsaf_device*) ; 
 int FUNC7 (struct dsaf_device*) ; 
 int FUNC8 (struct dsaf_device*) ; 
 int FUNC9 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dsaf_device*) ; 
 int FUNC11 (struct dsaf_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct dsaf_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct dsaf_device *dsaf_dev;
	int ret;

	dsaf_dev = FUNC4(&pdev->dev, sizeof(struct dsaf_drv_priv));
	if (FUNC0(dsaf_dev)) {
		ret = FUNC1(dsaf_dev);
		FUNC2(&pdev->dev,
			"dsaf_probe dsaf_alloc_dev failed, ret = %#x!\n", ret);
		return ret;
	}

	ret = FUNC7(dsaf_dev);
	if (ret)
		goto free_dev;

	ret = FUNC8(dsaf_dev);
	if (ret)
		goto free_dev;

	ret = FUNC9(dsaf_dev);
	if (ret)
		goto uninit_dsaf;

	ret = FUNC11(dsaf_dev);
	if (ret)
		goto uninit_mac;

	ret = FUNC3(dsaf_dev);
	if (ret)
		goto uninit_ppe;

	return 0;

uninit_ppe:
	FUNC12(dsaf_dev);

uninit_mac:
	FUNC10(dsaf_dev);

uninit_dsaf:
	FUNC5(dsaf_dev);

free_dev:
	FUNC6(dsaf_dev);

	return ret;
}