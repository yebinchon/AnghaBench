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
struct am654_hbmc_priv {scalar_t__ mux_ctrl; int /*<<< orphan*/  hbdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct am654_hbmc_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct am654_hbmc_priv *priv = FUNC2(pdev);
	int ret;

	ret = FUNC0(&priv->hbdev);
	if (priv->mux_ctrl)
		FUNC1(priv->mux_ctrl);
	FUNC4(&pdev->dev);
	FUNC3(&pdev->dev);

	return ret;
}