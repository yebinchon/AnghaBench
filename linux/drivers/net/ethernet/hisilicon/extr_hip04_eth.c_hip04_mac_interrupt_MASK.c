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
struct net_device_stats {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct hip04_priv {int reg_inten; int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_coalesce_timer; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DEF_INT_ERR ; 
 int DEF_INT_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PPE_INTEN ; 
 scalar_t__ PPE_INTSTS ; 
 scalar_t__ PPE_RINT ; 
 int RCV_DROP ; 
 int RCV_INT ; 
 int RCV_NOBUF ; 
 int TX_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct hip04_priv* FUNC4 (struct net_device*) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *ndev = (struct net_device *)dev_id;
	struct hip04_priv *priv = FUNC4(ndev);
	struct net_device_stats *stats = &ndev->stats;
	u32 ists = FUNC5(priv->base + PPE_INTSTS);

	if (!ists)
		return IRQ_NONE;

	FUNC7(DEF_INT_MASK, priv->base + PPE_RINT);

	if (FUNC6(ists & DEF_INT_ERR)) {
		if (ists & (RCV_NOBUF | RCV_DROP)) {
			stats->rx_errors++;
			stats->rx_dropped++;
			FUNC3(ndev, "rx drop\n");
		}
		if (ists & TX_DROP) {
			stats->tx_dropped++;
			FUNC3(ndev, "tx drop\n");
		}
	}

	if (ists & RCV_INT && FUNC2(&priv->napi)) {
		/* disable rx interrupt */
		priv->reg_inten &= ~(RCV_INT);
		FUNC7(DEF_INT_MASK & ~RCV_INT, priv->base + PPE_INTEN);
		FUNC1(&priv->tx_coalesce_timer);
		FUNC0(&priv->napi);
	}

	return IRQ_HANDLED;
}