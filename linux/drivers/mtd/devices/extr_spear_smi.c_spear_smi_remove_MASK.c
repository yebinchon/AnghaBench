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
struct spear_snor_flash {int /*<<< orphan*/  mtd; } ;
struct spear_smi {int num_flashes; int /*<<< orphan*/  clk; struct spear_snor_flash** flash; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct spear_smi* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct spear_smi *dev;
	struct spear_snor_flash *flash;
	int ret, i;

	dev = FUNC3(pdev);
	if (!dev) {
		FUNC1(&pdev->dev, "dev is null\n");
		return -ENODEV;
	}

	/* clean up for all nor flash */
	for (i = 0; i < dev->num_flashes; i++) {
		flash = dev->flash[i];
		if (!flash)
			continue;

		/* clean up mtd stuff */
		ret = FUNC2(&flash->mtd);
		if (ret)
			FUNC1(&pdev->dev, "error removing mtd\n");
	}

	FUNC0(dev->clk);

	return 0;
}