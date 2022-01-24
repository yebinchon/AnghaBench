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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct stmpe {int /*<<< orphan*/ * regs; TYPE_1__* variant; } ;
struct TYPE_2__ {scalar_t__ id_val; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ STMPE811_ID ; 
 int STMPE811_SYS_CTRL_RESET ; 
 size_t STMPE_IDX_SYS_CTRL ; 
 int STMPE_SYS_CTRL_RESET ; 
 int FUNC0 (struct stmpe*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stmpe*,int /*<<< orphan*/ ,int,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct stmpe *stmpe)
{
	u16 id_val = stmpe->variant->id_val;
	unsigned long timeout;
	int ret = 0;
	u8 reset_bit;

	if (id_val == STMPE811_ID)
		/* STMPE801 and STMPE610 use bit 1 of SYS_CTRL register */
		reset_bit = STMPE811_SYS_CTRL_RESET;
	else
		/* all other STMPE variant use bit 7 of SYS_CTRL register */
		reset_bit = STMPE_SYS_CTRL_RESET;

	ret = FUNC1(stmpe, stmpe->regs[STMPE_IDX_SYS_CTRL],
			       reset_bit, reset_bit);
	if (ret < 0)
		return ret;

	FUNC3(10);

	timeout = jiffies + FUNC2(100);
	while (FUNC4(jiffies, timeout)) {
		ret = FUNC0(stmpe, stmpe->regs[STMPE_IDX_SYS_CTRL]);
		if (ret < 0)
			return ret;
		if (!(ret & reset_bit))
			return 0;
		FUNC5(100, 200);
	}
	return -EIO;
}