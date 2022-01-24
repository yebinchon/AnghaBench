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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct ti_hecc_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  HECC_CANGIM ; 
 int /*<<< orphan*/  HECC_CANMC ; 
 int /*<<< orphan*/  HECC_CANMC_CCR ; 
 int /*<<< orphan*/  HECC_CANME ; 
 int /*<<< orphan*/  HECC_CANMIM ; 
 int /*<<< orphan*/  FUNC0 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_hecc_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct ti_hecc_priv *priv = FUNC2(ndev);

	/* Disable the CPK; stop sending, erroring and acking */
	FUNC0(priv, HECC_CANMC, HECC_CANMC_CCR);

	/* Disable interrupts and disable mailboxes */
	FUNC1(priv, HECC_CANGIM, 0);
	FUNC1(priv, HECC_CANMIM, 0);
	FUNC1(priv, HECC_CANME, 0);
	priv->can.state = CAN_STATE_STOPPED;
}