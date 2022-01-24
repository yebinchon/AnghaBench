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
typedef  unsigned int u32 ;
struct sram_channel {unsigned int name; int fifo_size; scalar_t__ cnt2_reg; scalar_t__ cnt1_reg; scalar_t__ ptr2_reg; scalar_t__ ptr1_reg; scalar_t__ ctrl_start; int /*<<< orphan*/  fifo_start; scalar_t__ cmds_start; } ;
struct cx88_core {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,...) ; 

void FUNC5(struct cx88_core *core,
			    const struct sram_channel *ch)
{
	static const char * const name[] = {
		"initial risc",
		"cdt base",
		"cdt size",
		"iq base",
		"iq size",
		"risc pc",
		"iq wr ptr",
		"iq rd ptr",
		"cdt current",
		"pci target",
		"line / byte",
	};
	u32 risc;
	unsigned int i, j, n;

	FUNC3("%s - dma channel status dump\n", ch->name);
	for (i = 0; i < FUNC0(name); i++)
		FUNC3("   cmds: %-12s: 0x%08x\n",
			 name[i], FUNC2(ch->cmds_start + 4 * i));
	for (n = 1, i = 0; i < 4; i++) {
		risc = FUNC2(ch->cmds_start + 4 * (i + 11));
		FUNC4("  risc%d: ", i);
		if (--n)
			FUNC4("0x%08x [ arg #%d ]\n", risc, n);
		else
			n = FUNC1(risc);
	}
	for (i = 0; i < 16; i += n) {
		risc = FUNC2(ch->ctrl_start + 4 * i);
		FUNC3("  iq %x: ", i);
		n = FUNC1(risc);
		for (j = 1; j < n; j++) {
			risc = FUNC2(ch->ctrl_start + 4 * (i + j));
			FUNC4("  iq %x: 0x%08x [ arg #%d ]\n",
				i + j, risc, j);
		}
	}

	FUNC3("fifo: 0x%08x -> 0x%x\n",
		 ch->fifo_start, ch->fifo_start + ch->fifo_size);
	FUNC3("ctrl: 0x%08x -> 0x%x\n",
		 ch->ctrl_start, ch->ctrl_start + 6 * 16);
	FUNC3("  ptr1_reg: 0x%08x\n", FUNC2(ch->ptr1_reg));
	FUNC3("  ptr2_reg: 0x%08x\n", FUNC2(ch->ptr2_reg));
	FUNC3("  cnt1_reg: 0x%08x\n", FUNC2(ch->cnt1_reg));
	FUNC3("  cnt2_reg: 0x%08x\n", FUNC2(ch->cnt2_reg));
}