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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct cpmac_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 () ; 
 struct cpmac_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 scalar_t__ FUNC7 (struct cpmac_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct cpmac_priv *priv = FUNC5(dev);

	FUNC9(&priv->lock);
	dev->stats.tx_errors++;
	FUNC10(&priv->lock);
	if (FUNC7(priv) && FUNC4())
		FUNC6(dev, "transmit timeout\n");

	FUNC1(&priv->reset_pending);
	FUNC2();
	FUNC3(dev);
	FUNC2();
	FUNC0(&priv->reset_pending);

	FUNC8(priv->dev);
}