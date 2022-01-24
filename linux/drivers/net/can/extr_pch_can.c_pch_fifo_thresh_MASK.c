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
struct TYPE_3__ {int /*<<< orphan*/  creq; int /*<<< orphan*/  mcont; int /*<<< orphan*/  id2; int /*<<< orphan*/  cmask; } ;

/* Variables and functions */
 int PCH_CMASK_ARB ; 
 int PCH_CMASK_CTRL ; 
 int PCH_CMASK_RDWR ; 
 int PCH_FIFO_THRESH ; 
 int /*<<< orphan*/  PCH_ID2_DIR ; 
 int /*<<< orphan*/  PCH_IF_MCONT_INTPND ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_can_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct pch_can_priv *priv, int obj_id)
{
	if (obj_id < PCH_FIFO_THRESH) {
		FUNC0(PCH_CMASK_RDWR | PCH_CMASK_CTRL |
			  PCH_CMASK_ARB, &priv->regs->ifregs[0].cmask);

		/* Clearing the Dir bit. */
		FUNC1(&priv->regs->ifregs[0].id2, PCH_ID2_DIR);

		/* Clearing NewDat & IntPnd */
		FUNC1(&priv->regs->ifregs[0].mcont,
				  PCH_IF_MCONT_INTPND);
		FUNC3(&priv->regs->ifregs[0].creq, obj_id);
	} else if (obj_id > PCH_FIFO_THRESH) {
		FUNC2(priv, obj_id);
	} else if (obj_id == PCH_FIFO_THRESH) {
		int cnt;
		for (cnt = 0; cnt < PCH_FIFO_THRESH; cnt++)
			FUNC2(priv, cnt + 1);
	}
}