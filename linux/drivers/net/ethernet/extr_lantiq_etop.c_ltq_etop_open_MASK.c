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
struct ltq_etop_chan {int /*<<< orphan*/  napi; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MAX_DMA_CHAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ltq_etop_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct net_device *dev)
{
	struct ltq_etop_priv *priv = FUNC5(dev);
	int i;

	for (i = 0; i < MAX_DMA_CHAN; i++) {
		struct ltq_etop_chan *ch = &priv->ch[i];

		if (!FUNC1(i) && (!FUNC0(i)))
			continue;
		FUNC3(&ch->dma);
		FUNC2(&ch->dma);
		FUNC4(&ch->napi);
	}
	FUNC7(dev->phydev);
	FUNC6(dev);
	return 0;
}