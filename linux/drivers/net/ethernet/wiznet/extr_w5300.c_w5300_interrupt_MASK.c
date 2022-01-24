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
struct w5300_priv {int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int S0_IR_RECV ; 
 int S0_IR_SENDOK ; 
 int /*<<< orphan*/  W5300_IMR ; 
 int /*<<< orphan*/  W5300_S0_IR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct w5300_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct w5300_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  tx_done ; 
 int FUNC5 (struct w5300_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct w5300_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *ndev_instance)
{
	struct net_device *ndev = ndev_instance;
	struct w5300_priv *priv = FUNC2(ndev);

	int ir = FUNC5(priv, W5300_S0_IR);
	if (!ir)
		return IRQ_NONE;
	FUNC6(priv, W5300_S0_IR, ir);

	if (ir & S0_IR_SENDOK) {
		FUNC3(priv, tx_done, ndev, "tx done\n");
		FUNC4(ndev);
	}

	if (ir & S0_IR_RECV) {
		if (FUNC1(&priv->napi)) {
			FUNC6(priv, W5300_IMR, 0);
			FUNC0(&priv->napi);
		}
	}

	return IRQ_HANDLED;
}