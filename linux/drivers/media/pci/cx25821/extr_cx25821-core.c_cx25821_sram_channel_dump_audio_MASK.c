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
struct sram_channel {unsigned int cmds_start; int ctrl_start; unsigned int ptr1_reg; unsigned int ptr2_reg; unsigned int cnt1_reg; unsigned int cnt2_reg; int /*<<< orphan*/  fifo_size; int /*<<< orphan*/  fifo_start; int /*<<< orphan*/  name; } ;
struct cx25821_dev {int /*<<< orphan*/ * i2c_bus; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_AB_DIAG_CTRL ; 
 unsigned int FUNC0 (char const* const*) ; 
 unsigned int AUD_A_CDT ; 
 unsigned int CLK_RST ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 unsigned int PLL_A_INT_FRAC ; 
 unsigned int PLL_A_POST_STAT_BIST ; 
 unsigned int PLL_B_INT_FRAC ; 
 unsigned int PLL_B_POST_STAT_BIST ; 
 unsigned int PLL_C_INT_FRAC ; 
 unsigned int PLL_C_POST_STAT_BIST ; 
 unsigned int PLL_D_INT_FRAC ; 
 unsigned int PLL_D_POST_STAT_BIST ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,...) ; 

void FUNC8(struct cx25821_dev *dev,
				     const struct sram_channel *ch)
{
	static const char * const name[] = {
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

	u32 risc, value, tmp;
	unsigned int i, j, n;

	FUNC6("\n%s: %s - dma Audio channel status dump\n",
		dev->name, ch->name);

	for (i = 0; i < FUNC0(name); i++)
		FUNC6("%s: cmds + 0x%2x:   %-15s: 0x%08x\n",
			dev->name, i * 4, name[i],
			FUNC4(ch->cmds_start + 4 * i));

	j = i * 4;
	for (i = 0; i < 4;) {
		risc = FUNC4(ch->cmds_start + 4 * (i + 14));
		FUNC7("cmds + 0x%2x:   risc%d: ", j + i * 4, i);
		i += FUNC3(risc);
	}

	for (i = 0; i < (64 >> 2); i += n) {
		risc = FUNC4(ch->ctrl_start + 4 * i);
		/* No consideration for bits 63-32 */

		FUNC7("ctrl + 0x%2x (0x%08x): iq %x: ",
			i * 4, ch->ctrl_start + 4 * i, i);
		n = FUNC3(risc);

		for (j = 1; j < n; j++) {
			risc = FUNC4(ch->ctrl_start + 4 * (i + j));
			FUNC7("ctrl + 0x%2x :   iq %x: 0x%08x [ arg #%d ]\n",
				4 * (i + j), i + j, risc, j);
		}
	}

	FUNC7("        :   fifo: 0x%08x -> 0x%x\n",
		ch->fifo_start, ch->fifo_start + ch->fifo_size);
	FUNC7("        :   ctrl: 0x%08x -> 0x%x\n",
		ch->ctrl_start, ch->ctrl_start + 6 * 16);
	FUNC7("        :   ptr1_reg: 0x%08x\n",
		FUNC4(ch->ptr1_reg));
	FUNC7("        :   ptr2_reg: 0x%08x\n",
		FUNC4(ch->ptr2_reg));
	FUNC7("        :   cnt1_reg: 0x%08x\n",
		FUNC4(ch->cnt1_reg));
	FUNC7("        :   cnt2_reg: 0x%08x\n",
		FUNC4(ch->cnt2_reg));

	for (i = 0; i < 4; i++) {
		risc = FUNC4(ch->cmds_start + 56 + (i * 4));
		FUNC7("instruction %d = 0x%x\n", i, risc);
	}

	/* read data from the first cdt buffer */
	risc = FUNC4(AUD_A_CDT);
	FUNC7("\nread cdt loc=0x%x\n", risc);
	for (i = 0; i < 8; i++) {
		n = FUNC4(risc + i * 4);
		FUNC5("0x%x ", n);
	}
	FUNC5("\n\n");

	value = FUNC4(CLK_RST);
	FUNC1(" CLK_RST = 0x%x\n\n", value);

	value = FUNC4(PLL_A_POST_STAT_BIST);
	FUNC1(" PLL_A_POST_STAT_BIST = 0x%x\n\n", value);
	value = FUNC4(PLL_A_INT_FRAC);
	FUNC1(" PLL_A_INT_FRAC = 0x%x\n\n", value);

	value = FUNC4(PLL_B_POST_STAT_BIST);
	FUNC1(" PLL_B_POST_STAT_BIST = 0x%x\n\n", value);
	value = FUNC4(PLL_B_INT_FRAC);
	FUNC1(" PLL_B_INT_FRAC = 0x%x\n\n", value);

	value = FUNC4(PLL_C_POST_STAT_BIST);
	FUNC1(" PLL_C_POST_STAT_BIST = 0x%x\n\n", value);
	value = FUNC4(PLL_C_INT_FRAC);
	FUNC1(" PLL_C_INT_FRAC = 0x%x\n\n", value);

	value = FUNC4(PLL_D_POST_STAT_BIST);
	FUNC1(" PLL_D_POST_STAT_BIST = 0x%x\n\n", value);
	value = FUNC4(PLL_D_INT_FRAC);
	FUNC1(" PLL_D_INT_FRAC = 0x%x\n\n", value);

	value = FUNC2(&dev->i2c_bus[0], AFE_AB_DIAG_CTRL, &tmp);
	FUNC1(" AFE_AB_DIAG_CTRL (0x10900090) = 0x%x\n\n", value);
}