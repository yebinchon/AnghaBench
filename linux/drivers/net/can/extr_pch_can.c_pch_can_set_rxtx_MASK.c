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
typedef  int /*<<< orphan*/  u32 ;
struct pch_can_priv {TYPE_2__* regs; } ;
typedef  enum pch_ifreg { ____Placeholder_pch_ifreg } pch_ifreg ;
struct TYPE_4__ {TYPE_1__* ifregs; } ;
struct TYPE_3__ {int /*<<< orphan*/  creq; int /*<<< orphan*/  id2; int /*<<< orphan*/  mcont; int /*<<< orphan*/  cmask; } ;

/* Variables and functions */
 int PCH_CMASK_ARB ; 
 int PCH_CMASK_CTRL ; 
 int PCH_CMASK_RDWR ; 
 int PCH_CMASK_RX_TX_GET ; 
 int /*<<< orphan*/  PCH_ID_MSGVAL ; 
 int /*<<< orphan*/  PCH_IF_MCONT_RXIE ; 
 int /*<<< orphan*/  PCH_IF_MCONT_TXIE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pch_can_priv *priv, u32 buff_num,
			     int set, enum pch_ifreg dir)
{
	u32 ie;

	if (dir)
		ie = PCH_IF_MCONT_TXIE;
	else
		ie = PCH_IF_MCONT_RXIE;

	/* Reading the Msg buffer from Message RAM to IF1/2 registers. */
	FUNC0(PCH_CMASK_RX_TX_GET, &priv->regs->ifregs[dir].cmask);
	FUNC3(&priv->regs->ifregs[dir].creq, buff_num);

	/* Setting the IF1/2MASK1 register to access MsgVal and RxIE bits */
	FUNC0(PCH_CMASK_RDWR | PCH_CMASK_ARB | PCH_CMASK_CTRL,
		  &priv->regs->ifregs[dir].cmask);

	if (set) {
		/* Setting the MsgVal and RxIE/TxIE bits */
		FUNC2(&priv->regs->ifregs[dir].mcont, ie);
		FUNC2(&priv->regs->ifregs[dir].id2, PCH_ID_MSGVAL);
	} else {
		/* Clearing the MsgVal and RxIE/TxIE bits */
		FUNC1(&priv->regs->ifregs[dir].mcont, ie);
		FUNC1(&priv->regs->ifregs[dir].id2, PCH_ID_MSGVAL);
	}

	FUNC3(&priv->regs->ifregs[dir].creq, buff_num);
}