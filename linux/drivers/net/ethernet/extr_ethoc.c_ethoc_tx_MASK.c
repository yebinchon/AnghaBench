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
struct ethoc_bd {int stat; } ;
struct ethoc {int dty_tx; int num_tx; int cur_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK_TX ; 
 int TX_BD_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,struct ethoc_bd*) ; 
 struct ethoc* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, int limit)
{
	struct ethoc *priv = FUNC3(dev);
	int count;
	struct ethoc_bd bd;

	for (count = 0; count < limit; ++count) {
		unsigned int entry;

		entry = priv->dty_tx & (priv->num_tx-1);

		FUNC1(priv, entry, &bd);

		if (bd.stat & TX_BD_READY || (priv->dty_tx == priv->cur_tx)) {
			FUNC0(priv, INT_MASK_TX);
			/* If interrupt came in between reading in the BD
			 * and clearing the interrupt source, then we risk
			 * missing the event as the TX interrupt won't trigger
			 * right away when we reenable it; hence, check
			 * BD_EMPTY here again to make sure there isn't such an
			 * event pending...
			 */
			FUNC1(priv, entry, &bd);
			if (bd.stat & TX_BD_READY ||
			    (priv->dty_tx == priv->cur_tx))
				break;
		}

		FUNC2(priv, &bd);
		priv->dty_tx++;
	}

	if ((priv->cur_tx - priv->dty_tx) <= (priv->num_tx / 2))
		FUNC4(dev);

	return count;
}