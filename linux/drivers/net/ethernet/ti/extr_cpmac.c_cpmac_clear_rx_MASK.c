#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct cpmac_priv {int ring_size; struct cpmac_desc* rx_head; } ;
struct cpmac_desc {int dataflags; TYPE_2__* prev; struct cpmac_desc* next; int /*<<< orphan*/  mapping; int /*<<< orphan*/  hw_next; } ;
struct TYPE_4__ {scalar_t__ hw_next; } ;

/* Variables and functions */
 int CPMAC_OWN ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct cpmac_desc*) ; 
 scalar_t__ FUNC1 () ; 
 struct cpmac_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int FUNC4 (struct cpmac_priv*) ; 
 scalar_t__ FUNC5 (struct cpmac_priv*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct cpmac_priv *priv = FUNC2(dev);
	struct cpmac_desc *desc;
	int i;

	if (FUNC6(!priv->rx_head))
		return;
	desc = priv->rx_head;
	for (i = 0; i < priv->ring_size; i++) {
		if ((desc->dataflags & CPMAC_OWN) == 0) {
			if (FUNC5(priv) && FUNC1())
				FUNC3(dev, "packet dropped\n");
			if (FUNC6(FUNC4(priv)))
				FUNC0(dev, desc);
			desc->dataflags = CPMAC_OWN;
			dev->stats.rx_dropped++;
		}
		desc->hw_next = desc->next->mapping;
		desc = desc->next;
	}
	priv->rx_head->prev->hw_next = 0;
}