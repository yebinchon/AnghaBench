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
struct net_device {int flags; int mtu; } ;
struct gfar_private {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_RESETTING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int new_mtu)
{
	struct gfar_private *priv = FUNC2(dev);

	while (FUNC5(GFAR_RESETTING, &priv->state))
		FUNC1();

	if (dev->flags & IFF_UP)
		FUNC4(dev);

	dev->mtu = new_mtu;

	if (dev->flags & IFF_UP)
		FUNC3(dev);

	FUNC0(GFAR_RESETTING, &priv->state);

	return 0;
}