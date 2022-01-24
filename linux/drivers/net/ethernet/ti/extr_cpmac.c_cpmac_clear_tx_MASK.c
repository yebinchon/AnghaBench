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
struct net_device {int dummy; } ;
struct cpmac_priv {TYPE_1__* desc_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/ * skb; scalar_t__ dataflags; } ;

/* Variables and functions */
 int CPMAC_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct cpmac_priv* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct cpmac_priv *priv = FUNC1(dev);
	int i;

	if (FUNC2(!priv->desc_ring))
		return;
	for (i = 0; i < CPMAC_QUEUES; i++) {
		priv->desc_ring[i].dataflags = 0;
		if (priv->desc_ring[i].skb) {
			FUNC0(priv->desc_ring[i].skb);
			priv->desc_ring[i].skb = NULL;
		}
	}
}