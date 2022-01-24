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
struct can_priv {scalar_t__ restart_ms; int /*<<< orphan*/  restart_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct can_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *dev)
{
	struct can_priv *priv = FUNC2(dev);

	FUNC1(dev, "bus-off\n");

	FUNC3(dev);

	if (priv->restart_ms)
		FUNC4(&priv->restart_work,
				      FUNC0(priv->restart_ms));
}