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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct ltq_etop_priv {struct ltq_etop_chan* ch; } ;
struct ltq_etop_chan {int /*<<< orphan*/  dma; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MAX_DMA_CHAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ltq_etop_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct net_device *dev)
{
	struct ltq_etop_priv *priv = FUNC4(dev);
	int i;

	FUNC5(dev);
	FUNC6(dev->phydev);
	for (i = 0; i < MAX_DMA_CHAN; i++) {
		struct ltq_etop_chan *ch = &priv->ch[i];

		if (!FUNC0(i) && !FUNC1(i))
			continue;
		FUNC3(&ch->napi);
		FUNC2(&ch->dma);
	}
	return 0;
}