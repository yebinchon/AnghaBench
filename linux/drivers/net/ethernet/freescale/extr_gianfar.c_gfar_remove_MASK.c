#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gfar_private {int /*<<< orphan*/  ndev; int /*<<< orphan*/  tbi_node; int /*<<< orphan*/  phy_node; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*) ; 
 struct gfar_private* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *ofdev)
{
	struct gfar_private *priv = FUNC6(ofdev);
	struct device_node *np = ofdev->dev.of_node;

	FUNC3(priv->phy_node);
	FUNC3(priv->tbi_node);

	FUNC8(priv->ndev);

	if (FUNC5(np))
		FUNC4(np);

	FUNC7(priv);
	FUNC1(priv);
	FUNC2(priv);
	FUNC0(priv);

	return 0;
}