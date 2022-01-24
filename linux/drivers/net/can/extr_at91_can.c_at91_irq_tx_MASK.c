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
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct at91_priv {scalar_t__ tx_next; scalar_t__ tx_echo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_IDR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int AT91_MSR_MABT ; 
 int AT91_MSR_MRDY ; 
 int /*<<< orphan*/  CAN_LED_EVENT_TX ; 
 int FUNC1 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct at91_priv*) ; 
 int FUNC6 (struct at91_priv*) ; 
 unsigned int FUNC7 (struct at91_priv*) ; 
 scalar_t__ FUNC8 (int) ; 
 struct at91_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev, u32 reg_sr)
{
	struct at91_priv *priv = FUNC9(dev);
	u32 reg_msr;
	unsigned int mb;

	/* masking of reg_sr not needed, already done by at91_irq */

	for (/* nix */; (priv->tx_next - priv->tx_echo) > 0; priv->tx_echo++) {
		mb = FUNC7(priv);

		/* no event in mailbox? */
		if (!(reg_sr & (1 << mb)))
			break;

		/* Disable irq for this TX mailbox */
		FUNC2(priv, AT91_IDR, 1 << mb);

		/*
		 * only echo if mailbox signals us a transfer
		 * complete (MSR_MRDY). Otherwise it's a tansfer
		 * abort. "can_bus_off()" takes care about the skbs
		 * parked in the echo queue.
		 */
		reg_msr = FUNC1(priv, FUNC0(mb));
		if (FUNC8(reg_msr & AT91_MSR_MRDY &&
			   ~reg_msr & AT91_MSR_MABT)) {
			/* _NOTE_: subtract AT91_MB_TX_FIRST offset from mb! */
			FUNC3(dev, mb - FUNC5(priv));
			dev->stats.tx_packets++;
			FUNC4(dev, CAN_LED_EVENT_TX);
		}
	}

	/*
	 * restart queue if we don't have a wrap around but restart if
	 * we get a TX int for the last can frame directly before a
	 * wrap around.
	 */
	if ((priv->tx_next & FUNC6(priv)) != 0 ||
	    (priv->tx_echo & FUNC6(priv)) == 0)
		FUNC10(dev);
}