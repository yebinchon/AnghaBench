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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int EIO ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct resource *res;

	res = FUNC1(pdev, IORESOURCE_IO, 0);
	if (!res) {
		FUNC0(&pdev->dev, "can't fetch device resource info\n");
		return -EIO;
	}

	if (!FUNC2(res->start, FUNC3(res), DRV_NAME)) {
		FUNC0(&pdev->dev, "can't request region\n");
		return -EIO;
	}

	return 0;
}