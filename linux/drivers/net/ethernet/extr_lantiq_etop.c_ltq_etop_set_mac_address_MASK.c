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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct ltq_etop_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTQ_ETOP_MAC_DA0 ; 
 int /*<<< orphan*/  LTQ_ETOP_MAC_DA1 ; 
 int FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ltq_etop_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev, void *p)
{
	int ret = FUNC0(dev, p);

	if (!ret) {
		struct ltq_etop_priv *priv = FUNC2(dev);
		unsigned long flags;

		/* store the mac for the unicast filter */
		FUNC3(&priv->lock, flags);
		FUNC1(*((u32 *)dev->dev_addr), LTQ_ETOP_MAC_DA0);
		FUNC1(*((u16 *)&dev->dev_addr[4]) << 16,
			LTQ_ETOP_MAC_DA1);
		FUNC4(&priv->lock, flags);
	}
	return ret;
}