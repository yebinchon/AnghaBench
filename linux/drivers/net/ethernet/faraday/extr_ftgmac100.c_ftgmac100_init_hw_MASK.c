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
struct ftgmac100 {int rxdes_dma; int txdes_dma; int maht0; int maht1; scalar_t__ base; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FTGMAC100_DBLAC_RX_THR_EN ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 scalar_t__ FTGMAC100_OFFSET_APTC ; 
 scalar_t__ FTGMAC100_OFFSET_DBLAC ; 
 scalar_t__ FTGMAC100_OFFSET_FEAR ; 
 scalar_t__ FTGMAC100_OFFSET_ISR ; 
 scalar_t__ FTGMAC100_OFFSET_ITC ; 
 scalar_t__ FTGMAC100_OFFSET_MAHT0 ; 
 scalar_t__ FTGMAC100_OFFSET_MAHT1 ; 
 scalar_t__ FTGMAC100_OFFSET_NPTXR_BADR ; 
 scalar_t__ FTGMAC100_OFFSET_RBSR ; 
 scalar_t__ FTGMAC100_OFFSET_RXR_BADR ; 
 scalar_t__ FTGMAC100_OFFSET_TPAFCR ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC10 (struct ftgmac100*,int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC13(struct ftgmac100 *priv)
{
	u32 reg, rfifo_sz, tfifo_sz;

	/* Clear stale interrupts */
	reg = FUNC11(priv->base + FTGMAC100_OFFSET_ISR);
	FUNC12(reg, priv->base + FTGMAC100_OFFSET_ISR);

	/* Setup RX ring buffer base */
	FUNC12(priv->rxdes_dma, priv->base + FTGMAC100_OFFSET_RXR_BADR);

	/* Setup TX ring buffer base */
	FUNC12(priv->txdes_dma, priv->base + FTGMAC100_OFFSET_NPTXR_BADR);

	/* Configure RX buffer size */
	FUNC12(FUNC9(RX_BUF_SIZE),
		  priv->base + FTGMAC100_OFFSET_RBSR);

	/* Set RX descriptor autopoll */
	FUNC12(FUNC0(1),
		  priv->base + FTGMAC100_OFFSET_APTC);

	/* Write MAC address */
	FUNC10(priv, priv->netdev->dev_addr);

	/* Write multicast filter */
	FUNC12(priv->maht0, priv->base + FTGMAC100_OFFSET_MAHT0);
	FUNC12(priv->maht1, priv->base + FTGMAC100_OFFSET_MAHT1);

	/* Configure descriptor sizes and increase burst sizes according
	 * to values in Aspeed SDK. The FIFO arbitration is enabled and
	 * the thresholds set based on the recommended values in the
	 * AST2400 specification.
	 */
	FUNC12(FUNC2(2) |   /* 2*8 bytes RX descs */
		  FUNC6(2) |   /* 2*8 bytes TX descs */
		  FUNC1(3) | /* 512 bytes max RX bursts */
		  FUNC5(3) | /* 512 bytes max TX bursts */
		  FTGMAC100_DBLAC_RX_THR_EN |       /* Enable fifo threshold arb */
		  FUNC3(6) |  /* 6/8 of FIFO high threshold */
		  FUNC4(2),   /* 2/8 of FIFO low threshold */
		  priv->base + FTGMAC100_OFFSET_DBLAC);

	/* Interrupt mitigation configured for 1 interrupt/packet. HW interrupt
	 * mitigation doesn't seem to provide any benefit with NAPI so leave
	 * it at that.
	 */
	FUNC12(FUNC7(1) |
		  FUNC8(1),
		  priv->base + FTGMAC100_OFFSET_ITC);

	/* Configure FIFO sizes in the TPAFCR register */
	reg = FUNC11(priv->base + FTGMAC100_OFFSET_FEAR);
	rfifo_sz = reg & 0x00000007;
	tfifo_sz = (reg >> 3) & 0x00000007;
	reg = FUNC11(priv->base + FTGMAC100_OFFSET_TPAFCR);
	reg &= ~0x3f000000;
	reg |= (tfifo_sz << 27);
	reg |= (rfifo_sz << 24);
	FUNC12(reg, priv->base + FTGMAC100_OFFSET_TPAFCR);
}