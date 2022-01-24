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
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int /*<<< orphan*/  driver_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct lbs_private *priv = dev->ml_priv;

	FUNC1(priv, CMD_ACT_MESH_CONFIG_STOP,
		FUNC2(priv));

	FUNC7(&priv->driver_lock);

	FUNC6(dev);
	FUNC5(dev);

	FUNC8(&priv->driver_lock);

	FUNC4(priv);
	if (!FUNC0(priv))
		FUNC3(priv);

	return 0;
}