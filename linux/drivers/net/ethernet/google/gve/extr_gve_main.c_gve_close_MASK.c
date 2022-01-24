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
struct net_device {int dummy; } ;
struct gve_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*) ; 
 int FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 
 scalar_t__ FUNC4 (struct gve_priv*) ; 
 scalar_t__ FUNC5 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct gve_priv*,int) ; 
 int FUNC7 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gve_priv*) ; 
 int FUNC9 (struct gve_priv*) ; 
 struct gve_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct gve_priv *priv = FUNC10(dev);
	int err;

	FUNC11(dev);
	if (FUNC4(priv)) {
		FUNC8(priv);
		err = FUNC1(priv);
		if (err)
			goto err;
		err = FUNC9(priv);
		if (err)
			goto err;
		FUNC0(priv);
	}

	FUNC3(priv);
	FUNC2(priv);
	return 0;

err:
	/* This must have been called from a reset due to the rtnl lock
	 * so just return at this point.
	 */
	if (FUNC5(priv))
		return err;
	/* Otherwise reset before returning */
	FUNC6(priv, true);
	return FUNC7(priv, false);
}