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
struct nb8800_priv {int rx_itr_poll; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  NB8800_RXC_SR ; 
 int /*<<< orphan*/  NB8800_RX_ITR ; 
 int /*<<< orphan*/  NB8800_TXC_SR ; 
 int RSR_DE ; 
 int RSR_DI ; 
 int RSR_RI ; 
 int RSR_RO ; 
 int TSR_DE ; 
 int TSR_DI ; 
 int TSR_TI ; 
 int TSR_TO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nb8800_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct nb8800_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct nb8800_priv *priv = FUNC6(dev);
	irqreturn_t ret = IRQ_NONE;
	u32 val;

	/* tx interrupt */
	val = FUNC2(priv, NB8800_TXC_SR);
	if (val) {
		FUNC4(priv, NB8800_TXC_SR, val);

		if (val & TSR_DI)
			FUNC3(dev);

		if (val & TSR_TI)
			FUNC1(&priv->napi);

		if (FUNC7(val & TSR_DE))
			FUNC5(dev, "TX DMA error\n");

		/* should never happen with automatic status retrieval */
		if (FUNC7(val & TSR_TO))
			FUNC5(dev, "TX Status FIFO overflow\n");

		ret = IRQ_HANDLED;
	}

	/* rx interrupt */
	val = FUNC2(priv, NB8800_RXC_SR);
	if (val) {
		FUNC4(priv, NB8800_RXC_SR, val);

		if (FUNC0(val & (RSR_RI | RSR_DI))) {
			FUNC4(priv, NB8800_RX_ITR, priv->rx_itr_poll);
			FUNC1(&priv->napi);
		}

		if (FUNC7(val & RSR_DE))
			FUNC5(dev, "RX DMA error\n");

		/* should never happen with automatic status retrieval */
		if (FUNC7(val & RSR_RO))
			FUNC5(dev, "RX Status FIFO overflow\n");

		ret = IRQ_HANDLED;
	}

	return ret;
}