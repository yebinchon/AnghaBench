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
typedef  size_t u32 ;
struct octeon_instr_queue {int /*<<< orphan*/  post_lock; scalar_t__ fill_cnt; } ;
struct octeon_device {struct octeon_instr_queue** instr_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,struct octeon_instr_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct octeon_device *oct, u32 iq_no)
{
	struct octeon_instr_queue *iq;

	iq = oct->instr_queue[iq_no];
	FUNC1(&iq->post_lock);
	if (iq->fill_cnt)
		FUNC0(oct, iq);
	FUNC2(&iq->post_lock);
}