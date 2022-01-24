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
struct ltq_etop_priv {int /*<<< orphan*/ * ch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int MAX_DMA_CHAN ; 
 int /*<<< orphan*/  PMU_PPE ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ltq_etop_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	struct ltq_etop_priv *priv = FUNC4(dev);
	int i;

	FUNC3(PMU_PPE);
	for (i = 0; i < MAX_DMA_CHAN; i++)
		if (FUNC1(i) || FUNC0(i))
			FUNC2(dev, &priv->ch[i]);
}