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
struct TYPE_4__ {int dma; void** cpu; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr; int /*<<< orphan*/  pci; } ;
struct bttv {TYPE_2__ main; TYPE_1__ c; } ;

/* Variables and functions */
 int BT848_FIFO_STATUS_VRE ; 
 int BT848_FIFO_STATUS_VRO ; 
 int BT848_RISC_JUMP ; 
 int BT848_RISC_RESYNC ; 
 int BT848_RISC_SYNC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long long) ; 

int
FUNC3(struct bttv *btv)
{
	int rc;

	if ((rc = FUNC0(btv->c.pci,&btv->main,PAGE_SIZE)) < 0)
		return rc;
	FUNC2("%d: risc main @ %08llx\n",
		btv->c.nr, (unsigned long long)btv->main.dma);

	btv->main.cpu[0] = FUNC1(BT848_RISC_SYNC | BT848_RISC_RESYNC |
				       BT848_FIFO_STATUS_VRE);
	btv->main.cpu[1] = FUNC1(0);
	btv->main.cpu[2] = FUNC1(BT848_RISC_JUMP);
	btv->main.cpu[3] = FUNC1(btv->main.dma + (4<<2));

	/* top field */
	btv->main.cpu[4] = FUNC1(BT848_RISC_JUMP);
	btv->main.cpu[5] = FUNC1(btv->main.dma + (6<<2));
	btv->main.cpu[6] = FUNC1(BT848_RISC_JUMP);
	btv->main.cpu[7] = FUNC1(btv->main.dma + (8<<2));

	btv->main.cpu[8] = FUNC1(BT848_RISC_SYNC | BT848_RISC_RESYNC |
				       BT848_FIFO_STATUS_VRO);
	btv->main.cpu[9] = FUNC1(0);

	/* bottom field */
	btv->main.cpu[10] = FUNC1(BT848_RISC_JUMP);
	btv->main.cpu[11] = FUNC1(btv->main.dma + (12<<2));
	btv->main.cpu[12] = FUNC1(BT848_RISC_JUMP);
	btv->main.cpu[13] = FUNC1(btv->main.dma + (14<<2));

	/* jump back to top field */
	btv->main.cpu[14] = FUNC1(BT848_RISC_JUMP);
	btv->main.cpu[15] = FUNC1(btv->main.dma + (0<<2));

	return 0;
}