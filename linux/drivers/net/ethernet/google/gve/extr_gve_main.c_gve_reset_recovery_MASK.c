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
struct gve_priv {TYPE_1__* pdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct gve_priv*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 

__attribute__((used)) static int FUNC4(struct gve_priv *priv, bool was_up)
{
	int err;

	err = FUNC1(priv, true);
	if (err)
		goto err;
	if (was_up) {
		err = FUNC2(priv->dev);
		if (err)
			goto err;
	}
	return 0;
err:
	FUNC0(&priv->pdev->dev, "Reset failed! !!! DISABLING ALL QUEUES !!!\n");
	FUNC3(priv);
	return err;
}