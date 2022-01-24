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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct cb710_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CB710_DUMP_REGS_MMC ; 
 int /*<<< orphan*/  CB710_MMC_STATUS_PORT ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct cb710_slot *slot, u8 what)
{
	int err = 0;
	unsigned limit = 2000000;	/* FIXME: real timeout */

#ifdef CONFIG_CB710_DEBUG
	u32 e, x;
	e = cb710_read_port_32(slot, CB710_MMC_STATUS_PORT);
#endif

	while (!(err = FUNC0(slot, what))) {
		if (!--limit) {
			FUNC1(FUNC4(slot),
				CB710_DUMP_REGS_MMC);
			err = -ETIMEDOUT;
			break;
		}
		FUNC6(1);
	}

#ifdef CONFIG_CB710_DEBUG
	x = cb710_read_port_32(slot, CB710_MMC_STATUS_PORT);

	limit = 2000000 - limit;
	if (limit > 100)
		dev_dbg(cb710_slot_dev(slot),
			"WAIT10: waited %d loops, what %d, entry val %08X, exit val %08X\n",
			limit, what, e, x);
#endif
	return err < 0 ? err : 0;
}