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
struct dev_priv {int /*<<< orphan*/  mii_if; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct dev_priv *priv = FUNC3(dev);
	struct dev_info *hw_priv = priv->adapter;
	int rc;

	FUNC1(&hw_priv->lock);
	rc = FUNC0(&priv->mii_if);
	FUNC2(&hw_priv->lock);
	return rc;
}