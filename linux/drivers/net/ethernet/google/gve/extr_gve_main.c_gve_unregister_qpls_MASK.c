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
struct gve_priv {TYPE_1__* qpls; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int FUNC0 (struct gve_priv*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gve_priv*) ; 
 int FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gve_priv *priv)
{
	int num_qpls = FUNC2(priv) + FUNC1(priv);
	int err;
	int i;

	for (i = 0; i < num_qpls; i++) {
		err = FUNC0(priv, priv->qpls[i].id);
		/* This failure will trigger a reset - no need to clean up */
		if (err) {
			FUNC3(priv, drv, priv->dev,
				  "Failed to unregister queue page list %d\n",
				  priv->qpls[i].id);
			return err;
		}
	}
	return 0;
}