#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int ctrlmode; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int flags; } ;
struct xcan_priv {TYPE_2__ can; int /*<<< orphan*/  (* read_reg ) (struct xcan_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct xcan_priv*,int /*<<< orphan*/ ,int) ;TYPE_1__ devtype; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int CAN_CTRLMODE_LOOPBACK ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int /*<<< orphan*/  XCAN_AFR_EXT_OFFSET ; 
 int XCAN_FLAG_EXT_FILTERS ; 
 int XCAN_FLAG_RXMNF ; 
 int /*<<< orphan*/  XCAN_IER_OFFSET ; 
 int XCAN_IXR_ARBLST_MASK ; 
 int XCAN_IXR_BSOFF_MASK ; 
 int XCAN_IXR_ERROR_MASK ; 
 int XCAN_IXR_RXMNF_MASK ; 
 int XCAN_IXR_RXOFLW_MASK ; 
 int XCAN_IXR_SLP_MASK ; 
 int XCAN_IXR_TXOK_MASK ; 
 int XCAN_IXR_WKUP_MASK ; 
 int XCAN_MSR_LBACK_MASK ; 
 int /*<<< orphan*/  XCAN_MSR_OFFSET ; 
 int XCAN_SRR_CEN_MASK ; 
 int /*<<< orphan*/  XCAN_SRR_OFFSET ; 
 int /*<<< orphan*/  XCAN_SR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct xcan_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xcan_priv*) ; 
 int FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct xcan_priv *priv = FUNC1(ndev);
	u32 reg_msr;
	int err;
	u32 ier;

	/* Check if it is in reset mode */
	err = FUNC2(ndev);
	if (err < 0)
		return err;

	err = FUNC9(ndev);
	if (err < 0)
		return err;

	/* Enable interrupts */
	ier = XCAN_IXR_TXOK_MASK | XCAN_IXR_BSOFF_MASK |
		XCAN_IXR_WKUP_MASK | XCAN_IXR_SLP_MASK |
		XCAN_IXR_ERROR_MASK | XCAN_IXR_RXOFLW_MASK |
		XCAN_IXR_ARBLST_MASK | FUNC8(priv);

	if (priv->devtype.flags & XCAN_FLAG_RXMNF)
		ier |= XCAN_IXR_RXMNF_MASK;

	priv->write_reg(priv, XCAN_IER_OFFSET, ier);

	/* Check whether it is loopback mode or normal mode  */
	if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK) {
		reg_msr = XCAN_MSR_LBACK_MASK;
	} else {
		reg_msr = 0x0;
	}

	/* enable the first extended filter, if any, as cores with extended
	 * filtering default to non-receipt if all filters are disabled
	 */
	if (priv->devtype.flags & XCAN_FLAG_EXT_FILTERS)
		priv->write_reg(priv, XCAN_AFR_EXT_OFFSET, 0x00000001);

	priv->write_reg(priv, XCAN_MSR_OFFSET, reg_msr);
	priv->write_reg(priv, XCAN_SRR_OFFSET, XCAN_SRR_CEN_MASK);

	FUNC0(ndev, "status:#x%08x\n",
		   priv->read_reg(priv, XCAN_SR_OFFSET));

	priv->can.state = CAN_STATE_ERROR_ACTIVE;
	return 0;
}