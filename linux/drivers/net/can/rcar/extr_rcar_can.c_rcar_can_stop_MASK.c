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
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct rcar_can_priv {TYPE_2__ can; TYPE_1__* regs; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctlr; int /*<<< orphan*/  eier; int /*<<< orphan*/  ier; int /*<<< orphan*/  mier1; int /*<<< orphan*/  mier0; int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int MAX_STR_READS ; 
 int RCAR_CAN_CTLR_CANM_FORCE_RESET ; 
 int RCAR_CAN_CTLR_SLPM ; 
 int RCAR_CAN_STR_RSTST ; 
 struct rcar_can_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev)
{
	struct rcar_can_priv *priv = FUNC0(ndev);
	u16 ctlr;
	int i;

	/* Go to (force) reset mode */
	ctlr = FUNC1(&priv->regs->ctlr);
	ctlr |= RCAR_CAN_CTLR_CANM_FORCE_RESET;
	FUNC4(ctlr, &priv->regs->ctlr);
	for (i = 0; i < MAX_STR_READS; i++) {
		if (FUNC1(&priv->regs->str) & RCAR_CAN_STR_RSTST)
			break;
	}
	FUNC3(0, &priv->regs->mier0);
	FUNC3(0, &priv->regs->mier1);
	FUNC2(0, &priv->regs->ier);
	FUNC2(0, &priv->regs->eier);
	/* Go to sleep mode */
	ctlr |= RCAR_CAN_CTLR_SLPM;
	FUNC4(ctlr, &priv->regs->ctlr);
	priv->can.state = CAN_STATE_STOPPED;
}