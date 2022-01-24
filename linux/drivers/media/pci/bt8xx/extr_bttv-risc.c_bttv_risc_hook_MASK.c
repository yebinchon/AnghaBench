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
struct TYPE_3__ {int /*<<< orphan*/  nr; } ;
struct bttv {TYPE_2__ main; TYPE_1__ c; } ;
struct btcx_riscmem {unsigned long dma; void** jmp; } ;

/* Variables and functions */
 unsigned long BT848_RISC_IRQ ; 
 unsigned long BT848_RISC_JUMP ; 
 void* FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct btcx_riscmem*,int,...) ; 

int
FUNC2(struct bttv *btv, int slot, struct btcx_riscmem *risc,
	       int irqflags)
{
	unsigned long cmd;
	unsigned long next = btv->main.dma + ((slot+2) << 2);

	if (NULL == risc) {
		FUNC1("%d: risc=%p slot[%d]=NULL\n", btv->c.nr, risc, slot);
		btv->main.cpu[slot+1] = FUNC0(next);
	} else {
		FUNC1("%d: risc=%p slot[%d]=%08llx irq=%d\n",
			 btv->c.nr, risc, slot,
			 (unsigned long long)risc->dma, irqflags);
		cmd = BT848_RISC_JUMP;
		if (irqflags) {
			cmd |= BT848_RISC_IRQ;
			cmd |= (irqflags  & 0x0f) << 16;
			cmd |= (~irqflags & 0x0f) << 20;
		}
		risc->jmp[0] = FUNC0(cmd);
		risc->jmp[1] = FUNC0(next);
		btv->main.cpu[slot+1] = FUNC0(risc->dma);
	}
	return 0;
}