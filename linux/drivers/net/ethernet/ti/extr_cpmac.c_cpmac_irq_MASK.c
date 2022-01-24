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
struct net_device {int dummy; } ;
struct cpmac_priv {int /*<<< orphan*/  regs; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPMAC_MAC_EOI_VECTOR ; 
 int /*<<< orphan*/  CPMAC_MAC_INT_VECTOR ; 
 int /*<<< orphan*/  CPMAC_RX_INT_CLEAR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAC_INT_HOST ; 
 int MAC_INT_RX ; 
 int MAC_INT_STATUS ; 
 int MAC_INT_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 struct cpmac_priv* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct cpmac_priv*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct cpmac_priv *priv;
	int queue;
	u32 status;

	priv = FUNC7(dev);

	status = FUNC3(priv->regs, CPMAC_MAC_INT_VECTOR);

	if (FUNC9(FUNC8(priv)))
		FUNC6(dev, "interrupt status: 0x%08x\n", status);

	if (status & MAC_INT_TX)
		FUNC2(dev, (status & 7));

	if (status & MAC_INT_RX) {
		queue = (status >> 8) & 7;
		if (FUNC5(&priv->napi)) {
			FUNC4(priv->regs, CPMAC_RX_INT_CLEAR, 1 << queue);
			FUNC0(&priv->napi);
		}
	}

	FUNC4(priv->regs, CPMAC_MAC_EOI_VECTOR, 0);

	if (FUNC9(status & (MAC_INT_HOST | MAC_INT_STATUS)))
		FUNC1(dev);

	return IRQ_HANDLED;
}