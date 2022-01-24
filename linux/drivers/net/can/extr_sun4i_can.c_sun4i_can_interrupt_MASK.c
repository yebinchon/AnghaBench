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
typedef  int u8 ;
struct sun4ican_priv {scalar_t__ base; } ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SUN4I_CAN_MAX_IRQ ; 
 int SUN4I_INT_ARB_LOST ; 
 int SUN4I_INT_BUS_ERR ; 
 int SUN4I_INT_DATA_OR ; 
 int SUN4I_INT_ERR_PASSIVE ; 
 int SUN4I_INT_ERR_WRN ; 
 int SUN4I_INT_RBUF_VLD ; 
 int SUN4I_INT_TBUF_VLD ; 
 int SUN4I_INT_WAKEUP ; 
 scalar_t__ SUN4I_REG_INT_ADDR ; 
 scalar_t__ SUN4I_REG_RBUF_RBACK_START_ADDR ; 
 scalar_t__ SUN4I_REG_STA_ADDR ; 
 int SUN4I_STA_RBUF_RDY ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct sun4ican_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct sun4ican_priv *priv = FUNC4(dev);
	struct net_device_stats *stats = &dev->stats;
	u8 isrc, status;
	int n = 0;

	while ((isrc = FUNC7(priv->base + SUN4I_REG_INT_ADDR)) &&
	       (n < SUN4I_CAN_MAX_IRQ)) {
		n++;
		status = FUNC7(priv->base + SUN4I_REG_STA_ADDR);

		if (isrc & SUN4I_INT_WAKEUP)
			FUNC5(dev, "wakeup interrupt\n");

		if (isrc & SUN4I_INT_TBUF_VLD) {
			/* transmission complete interrupt */
			stats->tx_bytes +=
			    FUNC7(priv->base +
				  SUN4I_REG_RBUF_RBACK_START_ADDR) & 0xf;
			stats->tx_packets++;
			FUNC0(dev, 0);
			FUNC6(dev);
			FUNC1(dev, CAN_LED_EVENT_TX);
		}
		if ((isrc & SUN4I_INT_RBUF_VLD) &&
		    !(isrc & SUN4I_INT_DATA_OR)) {
			/* receive interrupt - don't read if overrun occurred */
			while (status & SUN4I_STA_RBUF_RDY) {
				/* RX buffer is not empty */
				FUNC9(dev);
				status = FUNC7(priv->base + SUN4I_REG_STA_ADDR);
			}
		}
		if (isrc &
		    (SUN4I_INT_DATA_OR | SUN4I_INT_ERR_WRN | SUN4I_INT_BUS_ERR |
		     SUN4I_INT_ERR_PASSIVE | SUN4I_INT_ARB_LOST)) {
			/* error interrupt */
			if (FUNC8(dev, isrc, status))
				FUNC3(dev, "can't allocate buffer - clearing pending interrupts\n");
		}
		/* clear interrupts */
		FUNC10(isrc, priv->base + SUN4I_REG_INT_ADDR);
		FUNC7(priv->base + SUN4I_REG_INT_ADDR);
	}
	if (n >= SUN4I_CAN_MAX_IRQ)
		FUNC2(dev, "%d messages handled in ISR", n);

	return (n) ? IRQ_HANDLED : IRQ_NONE;
}