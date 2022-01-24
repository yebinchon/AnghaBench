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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct intel_spi_boardinfo {int dummy; } ;
struct intel_spi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct intel_spi*) ; 
 int FUNC1 (struct intel_spi*) ; 
 struct intel_spi_boardinfo* FUNC2 (int /*<<< orphan*/ *) ; 
 struct intel_spi* FUNC3 (int /*<<< orphan*/ *,struct resource*,struct intel_spi_boardinfo*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct intel_spi*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct intel_spi_boardinfo *info;
	struct intel_spi *ispi;
	struct resource *mem;

	info = FUNC2(&pdev->dev);
	if (!info)
		return -EINVAL;

	mem = FUNC4(pdev, IORESOURCE_MEM, 0);
	ispi = FUNC3(&pdev->dev, mem, info);
	if (FUNC0(ispi))
		return FUNC1(ispi);

	FUNC5(pdev, ispi);
	return 0;
}