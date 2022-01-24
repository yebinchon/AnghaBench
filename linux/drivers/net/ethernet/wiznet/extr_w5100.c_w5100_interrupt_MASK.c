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
struct w5100_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  xfer_wq; TYPE_1__* ops; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ may_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int S0_IR_RECV ; 
 int S0_IR_SENDOK ; 
 int /*<<< orphan*/  FUNC0 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct w5100_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct w5100_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_done ; 
 int /*<<< orphan*/  FUNC7 (struct w5100_priv*) ; 
 int FUNC8 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct w5100_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *ndev_instance)
{
	struct net_device *ndev = ndev_instance;
	struct w5100_priv *priv = FUNC3(ndev);

	int ir = FUNC8(priv, FUNC0(priv));
	if (!ir)
		return IRQ_NONE;
	FUNC9(priv, FUNC0(priv), ir);

	if (ir & S0_IR_SENDOK) {
		FUNC4(priv, tx_done, ndev, "tx done\n");
		FUNC5(ndev);
	}

	if (ir & S0_IR_RECV) {
		FUNC7(priv);

		if (priv->ops->may_sleep)
			FUNC6(priv->xfer_wq, &priv->rx_work);
		else if (FUNC2(&priv->napi))
			FUNC1(&priv->napi);
	}

	return IRQ_HANDLED;
}