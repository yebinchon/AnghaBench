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
struct TYPE_4__ {int iq; } ;
struct octeon_device {TYPE_1__** instr_queue; TYPE_2__ io_qmask; } ;
struct TYPE_3__ {int /*<<< orphan*/  instr_pending; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct octeon_device *oct)
{
	int i, retry = 1000, pending, instr_cnt = 0;

	do {
		instr_cnt = 0;

		for (i = 0; i < FUNC1(oct); i++) {
			if (!(oct->io_qmask.iq & FUNC0(i)))
				continue;
			pending =
			    FUNC3(&oct->instr_queue[i]->instr_pending);
			if (pending)
				FUNC2(oct, i);
			instr_cnt += pending;
		}

		if (instr_cnt == 0)
			break;

		FUNC4(1);

	} while (retry-- && instr_cnt);

	return instr_cnt;
}