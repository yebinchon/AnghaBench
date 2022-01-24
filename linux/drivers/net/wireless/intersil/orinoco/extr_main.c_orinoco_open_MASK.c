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
struct orinoco_private {int open; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct orinoco_private*) ; 
 struct orinoco_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*,unsigned long*) ; 

int FUNC4(struct net_device *dev)
{
	struct orinoco_private *priv = FUNC1(dev);
	unsigned long flags;
	int err;

	if (FUNC2(priv, &flags) != 0)
		return -EBUSY;

	err = FUNC0(priv);

	if (!err)
		priv->open = 1;

	FUNC3(priv, &flags);

	return err;
}