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
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  napi; int /*<<< orphan*/  (* write_reg ) (struct xcan_priv*,int /*<<< orphan*/ ,int) ;} ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  XCAN_ICR_OFFSET ; 
 int /*<<< orphan*/  XCAN_IER_OFFSET ; 
 int /*<<< orphan*/  XCAN_ISR_OFFSET ; 
 int XCAN_IXR_ARBLST_MASK ; 
 int XCAN_IXR_BSOFF_MASK ; 
 int XCAN_IXR_ERROR_MASK ; 
 int XCAN_IXR_RXMNF_MASK ; 
 int XCAN_IXR_RXOFLW_MASK ; 
 int XCAN_IXR_SLP_MASK ; 
 int XCAN_IXR_TXOK_MASK ; 
 int XCAN_IXR_WKUP_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xcan_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int FUNC8 (struct xcan_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct net_device *ndev = (struct net_device *)dev_id;
	struct xcan_priv *priv = FUNC1(ndev);
	u32 isr, ier;
	u32 isr_errors;
	u32 rx_int_mask = FUNC8(priv);

	/* Get the interrupt status from Xilinx CAN */
	isr = priv->read_reg(priv, XCAN_ISR_OFFSET);
	if (!isr)
		return IRQ_NONE;

	/* Check for the type of interrupt and Processing it */
	if (isr & (XCAN_IXR_SLP_MASK | XCAN_IXR_WKUP_MASK)) {
		priv->write_reg(priv, XCAN_ICR_OFFSET, (XCAN_IXR_SLP_MASK |
				XCAN_IXR_WKUP_MASK));
		FUNC9(ndev, isr);
	}

	/* Check for Tx interrupt and Processing it */
	if (isr & XCAN_IXR_TXOK_MASK)
		FUNC10(ndev, isr);

	/* Check for the type of error interrupt and Processing it */
	isr_errors = isr & (XCAN_IXR_ERROR_MASK | XCAN_IXR_RXOFLW_MASK |
			    XCAN_IXR_BSOFF_MASK | XCAN_IXR_ARBLST_MASK |
			    XCAN_IXR_RXMNF_MASK);
	if (isr_errors) {
		priv->write_reg(priv, XCAN_ICR_OFFSET, isr_errors);
		FUNC7(ndev, isr);
	}

	/* Check for the type of receive interrupt and Processing it */
	if (isr & rx_int_mask) {
		ier = priv->read_reg(priv, XCAN_IER_OFFSET);
		ier &= ~rx_int_mask;
		priv->write_reg(priv, XCAN_IER_OFFSET, ier);
		FUNC0(&priv->napi);
	}
	return IRQ_HANDLED;
}