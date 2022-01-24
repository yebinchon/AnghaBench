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
struct vpbe_device {int /*<<< orphan*/  venc_device; int /*<<< orphan*/  osd_device; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct platform_device *pdev = FUNC3(dev);
	struct vpbe_device *vpbe_dev = data;

	if (FUNC2(pdev->name, "vpbe-osd"))
		vpbe_dev->osd_device = FUNC1(pdev);
	if (FUNC2(pdev->name, "vpbe-venc"))
		vpbe_dev->venc_device = FUNC0(&pdev->dev);

	return 0;
}