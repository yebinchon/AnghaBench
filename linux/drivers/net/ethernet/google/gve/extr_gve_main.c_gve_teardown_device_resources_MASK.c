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
struct gve_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*) ; 
 scalar_t__ FUNC5 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_priv*) ; 

__attribute__((used)) static void FUNC7(struct gve_priv *priv)
{
	int err;

	/* Tell device its resources are being freed */
	if (FUNC5(priv)) {
		err = FUNC1(priv);
		if (err) {
			FUNC0(&priv->pdev->dev,
				"Could not deconfigure device resources: err=%d\n",
				err);
			FUNC6(priv);
		}
	}
	FUNC3(priv);
	FUNC4(priv);
	FUNC2(priv);
}