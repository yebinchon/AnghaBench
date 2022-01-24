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
struct gve_priv {int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*,int) ; 
 int FUNC5 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct gve_priv*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct gve_priv *priv, bool attempt_teardown)
{
	bool was_up = FUNC9(priv->dev);
	int err;

	FUNC0(&priv->pdev->dev, "Performing reset\n");
	FUNC1(priv);
	FUNC6(priv);
	/* If we aren't attempting to teardown normally, just go turndown and
	 * reset right away.
	 */
	if (!attempt_teardown) {
		FUNC8(priv);
		FUNC4(priv, was_up);
	} else {
		/* Otherwise attempt to close normally */
		if (was_up) {
			err = FUNC3(priv->dev);
			/* If that fails reset as we did above */
			if (err)
				FUNC4(priv, was_up);
		}
		/* Clean up any remaining resources */
		FUNC7(priv);
	}

	/* Set it all back up */
	err = FUNC5(priv, was_up);
	FUNC2(priv);
	return err;
}