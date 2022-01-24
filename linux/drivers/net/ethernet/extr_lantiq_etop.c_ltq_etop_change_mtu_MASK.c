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
struct net_device {int mtu; } ;
struct ltq_etop_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ETOP_PLEN_UNDER ; 
 int /*<<< orphan*/  LTQ_ETOP_IGPLEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct ltq_etop_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, int new_mtu)
{
	struct ltq_etop_priv *priv = FUNC1(dev);
	unsigned long flags;

	dev->mtu = new_mtu;

	FUNC2(&priv->lock, flags);
	FUNC0((ETOP_PLEN_UNDER << 16) | new_mtu, LTQ_ETOP_IGPLEN);
	FUNC3(&priv->lock, flags);

	return 0;
}