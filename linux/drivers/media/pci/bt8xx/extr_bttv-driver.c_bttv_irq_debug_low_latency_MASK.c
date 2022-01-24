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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  nr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cpu; scalar_t__ dma; } ;
struct bttv {TYPE_1__ c; TYPE_2__ main; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_DSTATUS ; 
 int BT848_DSTATUS_HLOC ; 
 int RISC_SLOT_O_FIELD ; 
 int RISC_SLOT_O_VBI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct bttv *btv, u32 rc)
{
	FUNC4("%d: irq: skipped frame [main=%lx,o_vbi=%lx,o_field=%lx,rc=%lx]\n",
		btv->c.nr,
		(unsigned long)btv->main.dma,
		(unsigned long)FUNC2(btv->main.cpu[RISC_SLOT_O_VBI+1]),
		(unsigned long)FUNC2(btv->main.cpu[RISC_SLOT_O_FIELD+1]),
		(unsigned long)rc);

	if (0 == (FUNC0(BT848_DSTATUS) & BT848_DSTATUS_HLOC)) {
		FUNC3("%d: Oh, there (temporarily?) is no input signal. Ok, then this is harmless, don't worry ;)\n",
			  btv->c.nr);
		return;
	}
	FUNC3("%d: Uhm. Looks like we have unusual high IRQ latencies\n",
		  btv->c.nr);
	FUNC3("%d: Lets try to catch the culprit red-handed ...\n",
		  btv->c.nr);
	FUNC1();
}