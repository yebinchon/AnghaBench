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
struct at91_priv {unsigned int rx_next; scalar_t__ tx_echo; scalar_t__ tx_next; int /*<<< orphan*/  mb0_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AT91_MB_MODE_DISABLED ; 
 int /*<<< orphan*/  AT91_MB_MODE_RX ; 
 int /*<<< orphan*/  AT91_MB_MODE_RX_OVRWR ; 
 int /*<<< orphan*/  AT91_MB_MODE_TX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int AT91_MID_MIDE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_priv*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC5 (struct at91_priv*) ; 
 unsigned int FUNC6 (struct at91_priv*) ; 
 unsigned int FUNC7 (struct at91_priv*) ; 
 unsigned int FUNC8 (struct at91_priv*) ; 
 struct at91_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct at91_priv*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct at91_priv*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct at91_priv *priv = FUNC9(dev);
	unsigned int i;
	u32 reg_mid;

	/*
	 * Due to a chip bug (errata 50.2.6.3 & 50.3.5.3) the first
	 * mailbox is disabled. The next 11 mailboxes are used as a
	 * reception FIFO. The last mailbox is configured with
	 * overwrite option. The overwrite flag indicates a FIFO
	 * overflow.
	 */
	reg_mid = FUNC3(priv->mb0_id);
	for (i = 0; i < FUNC5(priv); i++) {
		FUNC10(priv, i, AT91_MB_MODE_DISABLED);
		FUNC4(priv, FUNC2(i), reg_mid);
		FUNC4(priv, FUNC1(i), 0x0);	/* clear dlc */
	}

	for (i = FUNC5(priv); i < FUNC6(priv); i++)
		FUNC10(priv, i, AT91_MB_MODE_RX);
	FUNC10(priv, FUNC6(priv), AT91_MB_MODE_RX_OVRWR);

	/* reset acceptance mask and id register */
	for (i = FUNC5(priv); i <= FUNC6(priv); i++) {
		FUNC4(priv, FUNC0(i), 0x0);
		FUNC4(priv, FUNC2(i), AT91_MID_MIDE);
	}

	/* The last 4 mailboxes are used for transmitting. */
	for (i = FUNC7(priv); i <= FUNC8(priv); i++)
		FUNC11(priv, i, AT91_MB_MODE_TX, 0);

	/* Reset tx and rx helper pointers */
	priv->tx_next = priv->tx_echo = 0;
	priv->rx_next = FUNC5(priv);
}