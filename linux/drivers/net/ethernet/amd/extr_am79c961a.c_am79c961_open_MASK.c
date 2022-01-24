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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  expires; } ;
struct dev_priv {TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  am79c961_interrupt ; 
 int /*<<< orphan*/  jiffies ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev)
{
	struct dev_priv *priv = FUNC2(dev);
	int ret;

	ret = FUNC5(dev->irq, am79c961_interrupt, 0, dev->name, dev);
	if (ret)
		return ret;

	FUNC1(dev);

	FUNC3(dev);

	priv->timer.expires = jiffies;
	FUNC0(&priv->timer);

	FUNC4(dev);

	return 0;
}