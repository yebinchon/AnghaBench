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
struct s3c_camif_plat_data {int /*<<< orphan*/  (* gpio_put ) () ;} ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct camif_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  media_dev; struct s3c_camif_plat_data pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct camif_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct camif_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct camif_dev *camif = FUNC4(pdev);
	struct s3c_camif_plat_data *pdata = &camif->pdata;

	FUNC3(&camif->media_dev);
	FUNC2(&camif->media_dev);
	FUNC1(camif);
	FUNC7(&camif->v4l2_dev);

	FUNC5(&pdev->dev);
	FUNC0(camif);
	pdata->gpio_put();

	return 0;
}