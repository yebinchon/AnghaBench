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
struct pch_can_priv {TYPE_2__* regs; } ;
struct TYPE_4__ {TYPE_1__* ifregs; } ;
struct TYPE_3__ {int /*<<< orphan*/  creq; int /*<<< orphan*/  cmask; int /*<<< orphan*/ * data; int /*<<< orphan*/  mcont; int /*<<< orphan*/  id2; int /*<<< orphan*/  id1; int /*<<< orphan*/  mask2; int /*<<< orphan*/  mask1; } ;

/* Variables and functions */
 int PCH_CMASK_ARB ; 
 int PCH_CMASK_CTRL ; 
 int PCH_CMASK_MASK ; 
 int PCH_CMASK_RDWR ; 
 int PCH_CMASK_RX_TX_SET ; 
 int PCH_RX_OBJ_START ; 
 int PCH_TX_OBJ_END ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct pch_can_priv *priv)
{
	int i; /* Msg Obj ID (1~32) */

	for (i = PCH_RX_OBJ_START; i <= PCH_TX_OBJ_END; i++) {
		FUNC0(PCH_CMASK_RX_TX_SET, &priv->regs->ifregs[0].cmask);
		FUNC0(0xffff, &priv->regs->ifregs[0].mask1);
		FUNC0(0xffff, &priv->regs->ifregs[0].mask2);
		FUNC0(0x0, &priv->regs->ifregs[0].id1);
		FUNC0(0x0, &priv->regs->ifregs[0].id2);
		FUNC0(0x0, &priv->regs->ifregs[0].mcont);
		FUNC0(0x0, &priv->regs->ifregs[0].data[0]);
		FUNC0(0x0, &priv->regs->ifregs[0].data[1]);
		FUNC0(0x0, &priv->regs->ifregs[0].data[2]);
		FUNC0(0x0, &priv->regs->ifregs[0].data[3]);
		FUNC0(PCH_CMASK_RDWR | PCH_CMASK_MASK |
			  PCH_CMASK_ARB | PCH_CMASK_CTRL,
			  &priv->regs->ifregs[0].cmask);
		FUNC1(&priv->regs->ifregs[0].creq, i);
	}
}