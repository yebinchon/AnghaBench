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
struct net_device_stats {int rx_missed_errors; int rx_errors; int rx_crc_errors; int rx_frame_errors; int rx_over_errors; } ;
struct net_device {struct net_device_stats stats; } ;
struct arc_emac_priv {int rx_missed_errors; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int ERR_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int MDIO_MASK ; 
 unsigned int MSER_MASK ; 
 unsigned int RXCR_MASK ; 
 unsigned int RXFL_MASK ; 
 unsigned int RXFR_MASK ; 
 unsigned int RXINT_MASK ; 
 int /*<<< orphan*/  R_ENABLE ; 
 int /*<<< orphan*/  R_STATUS ; 
 unsigned int TXINT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct arc_emac_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (struct arc_emac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct arc_emac_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct arc_emac_priv* FUNC7 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_instance)
{
	struct net_device *ndev = dev_instance;
	struct arc_emac_priv *priv = FUNC7(ndev);
	struct net_device_stats *stats = &ndev->stats;
	unsigned int status;

	status = FUNC2(priv, R_STATUS);
	status &= ~MDIO_MASK;

	/* Reset all flags except "MDIO complete" */
	FUNC3(priv, R_STATUS, status);

	if (status & (RXINT_MASK | TXINT_MASK)) {
		if (FUNC4(FUNC6(&priv->napi))) {
			FUNC1(priv, R_ENABLE, RXINT_MASK | TXINT_MASK);
			FUNC0(&priv->napi);
		}
	}

	if (status & ERR_MASK) {
		/* MSER/RXCR/RXFR/RXFL interrupt fires on corresponding
		 * 8-bit error counter overrun.
		 */

		if (status & MSER_MASK) {
			stats->rx_missed_errors += 0x100;
			stats->rx_errors += 0x100;
			priv->rx_missed_errors += 0x100;
			FUNC5(&priv->napi);
		}

		if (status & RXCR_MASK) {
			stats->rx_crc_errors += 0x100;
			stats->rx_errors += 0x100;
		}

		if (status & RXFR_MASK) {
			stats->rx_frame_errors += 0x100;
			stats->rx_errors += 0x100;
		}

		if (status & RXFL_MASK) {
			stats->rx_over_errors += 0x100;
			stats->rx_errors += 0x100;
		}
	}

	return IRQ_HANDLED;
}