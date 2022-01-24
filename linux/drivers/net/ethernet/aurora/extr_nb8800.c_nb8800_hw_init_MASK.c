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
struct nb8800_priv {int rx_itr_irq; int rx_itr_poll; int rx_dma_config; int pause_aneg; int pause_rx; int pause_tx; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int DESC_DS ; 
 int DESC_EOF ; 
 int /*<<< orphan*/  NB8800_PE_THRESHOLD ; 
 int /*<<< orphan*/  NB8800_PF_THRESHOLD ; 
 int /*<<< orphan*/  NB8800_PQ1 ; 
 int /*<<< orphan*/  NB8800_PQ2 ; 
 int /*<<< orphan*/  NB8800_RANDOM_SEED ; 
 int /*<<< orphan*/  NB8800_RXC_CR ; 
 int /*<<< orphan*/  NB8800_RX_CTL ; 
 int /*<<< orphan*/  NB8800_RX_ITR ; 
 int /*<<< orphan*/  NB8800_TXC_CR ; 
 int /*<<< orphan*/  NB8800_TX_BUFSIZE ; 
 int /*<<< orphan*/  NB8800_TX_CTL1 ; 
 int /*<<< orphan*/  NB8800_TX_CTL2 ; 
 int /*<<< orphan*/  NB8800_TX_ITR ; 
 int /*<<< orphan*/  NB8800_TX_SDP ; 
 int FUNC1 (int) ; 
 int RCR_DIE ; 
 int RCR_DM ; 
 int RCR_LE ; 
 int FUNC2 (int) ; 
 int RCR_RS ; 
 int RX_AF_EN ; 
 int RX_BUF_SIZE ; 
 int RX_PAD_STRIP ; 
 int FUNC3 (int) ; 
 int TCR_DIE ; 
 int TCR_DM ; 
 int TCR_LE ; 
 int TCR_RS ; 
 int FUNC4 (int) ; 
 int TX_APPEND_FCS ; 
 int TX_PAD_EN ; 
 int TX_RETRY_EN ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nb8800_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 struct nb8800_priv* FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC10(dev);
	u32 val;

	val = TX_RETRY_EN | TX_PAD_EN | TX_APPEND_FCS;
	FUNC8(priv, NB8800_TX_CTL1, val);

	/* Collision retry count */
	FUNC8(priv, NB8800_TX_CTL2, 5);

	val = RX_PAD_STRIP | RX_AF_EN;
	FUNC8(priv, NB8800_RX_CTL, val);

	/* Chosen by fair dice roll */
	FUNC8(priv, NB8800_RANDOM_SEED, 4);

	/* TX cycles per deferral period */
	FUNC8(priv, NB8800_TX_SDP, 12);

	/* The following three threshold values have been
	 * experimentally determined for good results.
	 */

	/* RX/TX FIFO threshold for partial empty (64-bit entries) */
	FUNC8(priv, NB8800_PE_THRESHOLD, 0);

	/* RX/TX FIFO threshold for partial full (64-bit entries) */
	FUNC8(priv, NB8800_PF_THRESHOLD, 255);

	/* Buffer size for transmit (64-bit entries) */
	FUNC8(priv, NB8800_TX_BUFSIZE, 64);

	/* Configure tx DMA */

	val = FUNC7(priv, NB8800_TXC_CR);
	val &= TCR_LE;		/* keep endian setting */
	val |= TCR_DM;		/* DMA descriptor mode */
	val |= TCR_RS;		/* automatically store tx status  */
	val |= TCR_DIE;		/* interrupt on DMA chain completion */
	val |= FUNC4(7);	/* interrupt after 7 frames transmitted */
	val |= FUNC3(2);	/* 32-byte bus transaction size */
	FUNC9(priv, NB8800_TXC_CR, val);

	/* TX complete interrupt after 10 ms or 7 frames (see above) */
	val = FUNC5(priv->clk) / 100;
	FUNC9(priv, NB8800_TX_ITR, val);

	/* Configure rx DMA */

	val = FUNC7(priv, NB8800_RXC_CR);
	val &= RCR_LE;		/* keep endian setting */
	val |= RCR_DM;		/* DMA descriptor mode */
	val |= RCR_RS;		/* automatically store rx status */
	val |= RCR_DIE;		/* interrupt at end of DMA chain */
	val |= FUNC2(7);	/* interrupt after 7 frames received */
	val |= FUNC1(2);	/* 32-byte bus transaction size */
	FUNC9(priv, NB8800_RXC_CR, val);

	/* The rx interrupt can fire before the DMA has completed
	 * unless a small delay is added.  50 us is hopefully enough.
	 */
	priv->rx_itr_irq = FUNC5(priv->clk) / 20000;

	/* In NAPI poll mode we want to disable interrupts, but the
	 * hardware does not permit this.  Delay 10 ms instead.
	 */
	priv->rx_itr_poll = FUNC5(priv->clk) / 100;

	FUNC9(priv, NB8800_RX_ITR, priv->rx_itr_irq);

	priv->rx_dma_config = RX_BUF_SIZE | FUNC0(2) | DESC_DS | DESC_EOF;

	/* Flow control settings */

	/* Pause time of 0.1 ms */
	val = 100000 / 512;
	FUNC8(priv, NB8800_PQ1, val >> 8);
	FUNC8(priv, NB8800_PQ2, val & 0xff);

	/* Auto-negotiate by default */
	priv->pause_aneg = true;
	priv->pause_rx = true;
	priv->pause_tx = true;

	FUNC6(dev, 0);

	return 0;
}