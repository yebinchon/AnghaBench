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
struct ltq_etop_priv {int dummy; } ;
struct TYPE_2__ {size_t desc; scalar_t__ irq; } ;
struct ltq_etop_chan {TYPE_1__ dma; int /*<<< orphan*/ * skb; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LTQ_DESC_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ltq_etop_priv*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct ltq_etop_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev, struct ltq_etop_chan *ch)
{
	struct ltq_etop_priv *priv = FUNC4(dev);

	FUNC3(&ch->dma);
	if (ch->dma.irq)
		FUNC2(ch->dma.irq, priv);
	if (FUNC0(ch->idx)) {
		int desc;
		for (desc = 0; desc < LTQ_DESC_NUM; desc++)
			FUNC1(ch->skb[ch->dma.desc]);
	}
}