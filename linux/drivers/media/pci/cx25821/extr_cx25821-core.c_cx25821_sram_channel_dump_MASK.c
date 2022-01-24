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
typedef  int /*<<< orphan*/  u32 ;
struct sram_channel {int fifo_size; scalar_t__ cnt2_reg; scalar_t__ cnt1_reg; scalar_t__ ptr2_reg; scalar_t__ ptr1_reg; scalar_t__ ctrl_start; int /*<<< orphan*/  fifo_start; scalar_t__ cmds_start; int /*<<< orphan*/  name; } ;
struct cx25821_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 

void FUNC4(struct cx25821_dev *dev, const struct sram_channel *ch)
{
	static char *name[] = {
		"init risc lo",
		"init risc hi",
		"cdt base",
		"cdt size",
		"iq base",
		"iq size",
		"risc pc lo",
		"risc pc hi",
		"iq wr ptr",
		"iq rd ptr",
		"cdt current",
		"pci target lo",
		"pci target hi",
		"line / byte",
	};
	u32 risc;
	unsigned int i, j, n;

	FUNC3("%s: %s - dma channel status dump\n", dev->name, ch->name);
	for (i = 0; i < FUNC0(name); i++)
		FUNC3("cmds + 0x%2x:   %-15s: 0x%08x\n",
			i * 4, name[i], FUNC2(ch->cmds_start + 4 * i));

	j = i * 4;
	for (i = 0; i < 4;) {
		risc = FUNC2(ch->cmds_start + 4 * (i + 14));
		FUNC3("cmds + 0x%2x:   risc%d: ", j + i * 4, i);
		i += FUNC1(risc);
	}

	for (i = 0; i < (64 >> 2); i += n) {
		risc = FUNC2(ch->ctrl_start + 4 * i);
		/* No consideration for bits 63-32 */

		FUNC3("ctrl + 0x%2x (0x%08x): iq %x: ",
			i * 4, ch->ctrl_start + 4 * i, i);
		n = FUNC1(risc);
		for (j = 1; j < n; j++) {
			risc = FUNC2(ch->ctrl_start + 4 * (i + j));
			FUNC3("ctrl + 0x%2x :   iq %x: 0x%08x [ arg #%d ]\n",
				4 * (i + j), i + j, risc, j);
		}
	}

	FUNC3("        :   fifo: 0x%08x -> 0x%x\n",
		ch->fifo_start, ch->fifo_start + ch->fifo_size);
	FUNC3("        :   ctrl: 0x%08x -> 0x%x\n",
		ch->ctrl_start, ch->ctrl_start + 6 * 16);
	FUNC3("        :   ptr1_reg: 0x%08x\n",
		FUNC2(ch->ptr1_reg));
	FUNC3("        :   ptr2_reg: 0x%08x\n",
		FUNC2(ch->ptr2_reg));
	FUNC3("        :   cnt1_reg: 0x%08x\n",
		FUNC2(ch->cnt1_reg));
	FUNC3("        :   cnt2_reg: 0x%08x\n",
		FUNC2(ch->cnt2_reg));
}