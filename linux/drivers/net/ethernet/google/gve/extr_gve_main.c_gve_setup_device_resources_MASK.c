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
struct gve_priv {TYPE_1__* pdev; int /*<<< orphan*/  num_ntfy_blks; int /*<<< orphan*/  ntfy_block_bus; int /*<<< orphan*/  num_event_counters; int /*<<< orphan*/  counter_array_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct gve_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gve_priv*) ; 
 int FUNC3 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_priv*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct gve_priv *priv)
{
	int err;

	err = FUNC2(priv);
	if (err)
		return err;
	err = FUNC3(priv);
	if (err)
		goto abort_with_counter;
	err = FUNC1(priv,
						    priv->counter_array_bus,
						    priv->num_event_counters,
						    priv->ntfy_block_bus,
						    priv->num_ntfy_blks);
	if (FUNC7(err)) {
		FUNC0(&priv->pdev->dev,
			"could not setup device_resources: err=%d\n", err);
		err = -ENXIO;
		goto abort_with_ntfy_blocks;
	}
	FUNC6(priv);
	return 0;
abort_with_ntfy_blocks:
	FUNC5(priv);
abort_with_counter:
	FUNC4(priv);
	return err;
}