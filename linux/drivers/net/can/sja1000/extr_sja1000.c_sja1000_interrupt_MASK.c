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
typedef  int uint8_t ;
struct TYPE_2__ {int ctrlmode; } ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* post_irq ) (struct sja1000_priv*) ;TYPE_1__ can; int /*<<< orphan*/  (* pre_irq ) (struct sja1000_priv*) ;} ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CAN_CTRLMODE_ONE_SHOT ; 
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int IRQ_ALI ; 
 int IRQ_BEI ; 
 int IRQ_DOI ; 
 int IRQ_EI ; 
 int IRQ_EPI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_OFF ; 
 int IRQ_RI ; 
 int IRQ_TI ; 
 int IRQ_WUI ; 
 int /*<<< orphan*/  SJA1000_FI ; 
 int /*<<< orphan*/  SJA1000_IER ; 
 int /*<<< orphan*/  SJA1000_IR ; 
 int SJA1000_MAX_IRQ ; 
 int /*<<< orphan*/  SJA1000_SR ; 
 int SR_RBS ; 
 int SR_TCS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 struct sja1000_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*,int,int) ; 
 scalar_t__ FUNC8 (struct sja1000_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sja1000_priv*) ; 
 int FUNC11 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sja1000_priv*) ; 

irqreturn_t FUNC17(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct sja1000_priv *priv = FUNC4(dev);
	struct net_device_stats *stats = &dev->stats;
	uint8_t isrc, status;
	int n = 0;

	if (priv->pre_irq)
		priv->pre_irq(priv);

	/* Shared interrupts and IRQ off? */
	if (priv->read_reg(priv, SJA1000_IER) == IRQ_OFF)
		goto out;

	while ((isrc = priv->read_reg(priv, SJA1000_IR)) &&
	       (n < SJA1000_MAX_IRQ)) {

		status = priv->read_reg(priv, SJA1000_SR);
		/* check for absent controller due to hw unplug */
		if (status == 0xFF && FUNC8(priv))
			goto out;

		if (isrc & IRQ_WUI)
			FUNC5(dev, "wakeup interrupt\n");

		if (isrc & IRQ_TI) {
			/* transmission buffer released */
			if (priv->can.ctrlmode & CAN_CTRLMODE_ONE_SHOT &&
			    !(status & SR_TCS)) {
				stats->tx_errors++;
				FUNC0(dev, 0);
			} else {
				/* transmission complete */
				stats->tx_bytes +=
					priv->read_reg(priv, SJA1000_FI) & 0xf;
				stats->tx_packets++;
				FUNC1(dev, 0);
			}
			FUNC6(dev);
			FUNC2(dev, CAN_LED_EVENT_TX);
		}
		if (isrc & IRQ_RI) {
			/* receive interrupt */
			while (status & SR_RBS) {
				FUNC9(dev);
				status = priv->read_reg(priv, SJA1000_SR);
				/* check for absent controller */
				if (status == 0xFF && FUNC8(priv))
					goto out;
			}
		}
		if (isrc & (IRQ_DOI | IRQ_EI | IRQ_BEI | IRQ_EPI | IRQ_ALI)) {
			/* error interrupt */
			if (FUNC7(dev, isrc, status))
				break;
		}
		n++;
	}
out:
	if (priv->post_irq)
		priv->post_irq(priv);

	if (n >= SJA1000_MAX_IRQ)
		FUNC3(dev, "%d messages handled in ISR", n);

	return (n) ? IRQ_HANDLED : IRQ_NONE;
}