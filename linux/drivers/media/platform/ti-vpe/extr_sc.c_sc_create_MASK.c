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
struct sc_data {int /*<<< orphan*/  base; int /*<<< orphan*/  res; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sc_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sc_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char const*) ; 

struct sc_data *FUNC8(struct platform_device *pdev, const char *res_name)
{
	struct sc_data *sc;

	FUNC3(&pdev->dev, "sc_create\n");

	sc = FUNC6(&pdev->dev, sizeof(*sc), GFP_KERNEL);
	if (!sc) {
		FUNC4(&pdev->dev, "couldn't alloc sc_data\n");
		return FUNC1(-ENOMEM);
	}

	sc->pdev = pdev;

	sc->res = FUNC7(pdev, IORESOURCE_MEM, res_name);
	if (!sc->res) {
		FUNC4(&pdev->dev, "missing '%s' platform resources data\n",
			res_name);
		return FUNC1(-ENODEV);
	}

	sc->base = FUNC5(&pdev->dev, sc->res);
	if (FUNC2(sc->base)) {
		FUNC4(&pdev->dev, "failed to ioremap\n");
		return FUNC0(sc->base);
	}

	return sc;
}