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
struct net_device {int dev_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_fifo_errors; } ;
struct gemini_ethernet_port {int /*<<< orphan*/  ir_stats_syncp; TYPE_1__ stats; int /*<<< orphan*/  rx_coalesce_timer; int /*<<< orphan*/  rx_coalesce_nsecs; int /*<<< orphan*/  napi; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DEFAULT_Q0_INT_BIT ; 
 scalar_t__ GLOBAL_INTERRUPT_STATUS_4_REG ; 
 int GMAC0_IRQ0_2 ; 
 int GMAC0_IRQ0_TXQ0_INTS ; 
 int GMAC0_MIB_INT_BIT ; 
 int GMAC0_RXDERR_INT_BIT ; 
 int GMAC0_RX_OVERRUN_INT_BIT ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 struct gemini_ethernet_port* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *data)
{
	struct gemini_ethernet_port *port;
	struct net_device *netdev = data;
	struct gemini_ethernet *geth;
	u32 val, orr = 0;

	port = FUNC10(netdev);
	geth = port->geth;

	val = FUNC3(netdev, 0);
	orr |= val;

	if (val & (GMAC0_IRQ0_2 << (netdev->dev_id * 2))) {
		/* Oh, crap */
		FUNC9(netdev, "hw failure/sw bug\n");
		FUNC0(netdev);

		/* don't know how to recover, just reduce losses */
		FUNC1(netdev, 0);
		return IRQ_HANDLED;
	}

	if (val & (GMAC0_IRQ0_TXQ0_INTS << (netdev->dev_id * 6)))
		FUNC4(netdev, 0);

	val = FUNC3(netdev, 1);
	orr |= val;

	if (val & (DEFAULT_Q0_INT_BIT << netdev->dev_id)) {
		FUNC2(netdev, 0);

		if (!port->rx_coalesce_nsecs) {
			FUNC8(&port->napi);
		} else {
			ktime_t ktime;

			ktime = FUNC7(0, port->rx_coalesce_nsecs);
			FUNC6(&port->rx_coalesce_timer, ktime,
				      HRTIMER_MODE_REL);
		}
	}

	val = FUNC3(netdev, 4);
	orr |= val;

	if (val & (GMAC0_MIB_INT_BIT << (netdev->dev_id * 8)))
		FUNC5(netdev);

	if (val & (GMAC0_RX_OVERRUN_INT_BIT << (netdev->dev_id * 8))) {
		FUNC15(GMAC0_RXDERR_INT_BIT << (netdev->dev_id * 8),
		       geth->base + GLOBAL_INTERRUPT_STATUS_4_REG);

		FUNC11(&geth->irq_lock);
		FUNC13(&port->ir_stats_syncp);
		++port->stats.rx_fifo_errors;
		FUNC14(&port->ir_stats_syncp);
		FUNC12(&geth->irq_lock);
	}

	return orr ? IRQ_HANDLED : IRQ_NONE;
}