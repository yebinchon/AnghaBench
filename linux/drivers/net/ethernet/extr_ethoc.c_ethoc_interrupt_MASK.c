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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  dev; } ;
struct ethoc {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK ; 
 int INT_MASK_BUSY ; 
 int INT_MASK_RX ; 
 int INT_MASK_TX ; 
 int /*<<< orphan*/  INT_SOURCE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ethoc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,int) ; 
 int FUNC3 (struct ethoc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ethoc* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct ethoc *priv = FUNC5(dev);
	u32 pending;
	u32 mask;

	/* Figure out what triggered the interrupt...
	 * The tricky bit here is that the interrupt source bits get
	 * set in INT_SOURCE for an event regardless of whether that
	 * event is masked or not.  Thus, in order to figure out what
	 * triggered the interrupt, we need to remove the sources
	 * for all events that are currently masked.  This behaviour
	 * is not particularly well documented but reasonable...
	 */
	mask = FUNC3(priv, INT_MASK);
	pending = FUNC3(priv, INT_SOURCE);
	pending &= mask;

	if (FUNC6(pending == 0))
		return IRQ_NONE;

	FUNC1(priv, pending);

	/* We always handle the dropped packet interrupt */
	if (pending & INT_MASK_BUSY) {
		FUNC0(&dev->dev, "packet dropped\n");
		dev->stats.rx_dropped++;
	}

	/* Handle receive/transmit event by switching to polling */
	if (pending & (INT_MASK_TX | INT_MASK_RX)) {
		FUNC2(priv, INT_MASK_TX | INT_MASK_RX);
		FUNC4(&priv->napi);
	}

	return IRQ_HANDLED;
}