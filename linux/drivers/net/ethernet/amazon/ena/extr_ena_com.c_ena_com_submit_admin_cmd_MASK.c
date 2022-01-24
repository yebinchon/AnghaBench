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
struct ena_comp_ctx {int dummy; } ;
struct ena_com_admin_queue {int running_state; int /*<<< orphan*/  q_lock; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct ena_comp_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ena_comp_ctx*) ; 
 struct ena_comp_ctx* FUNC2 (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,size_t,struct ena_admin_acq_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct ena_comp_ctx *FUNC6(struct ena_com_admin_queue *admin_queue,
						     struct ena_admin_aq_entry *cmd,
						     size_t cmd_size_in_bytes,
						     struct ena_admin_acq_entry *comp,
						     size_t comp_size_in_bytes)
{
	unsigned long flags = 0;
	struct ena_comp_ctx *comp_ctx;

	FUNC3(&admin_queue->q_lock, flags);
	if (FUNC5(!admin_queue->running_state)) {
		FUNC4(&admin_queue->q_lock, flags);
		return FUNC0(-ENODEV);
	}
	comp_ctx = FUNC2(admin_queue, cmd,
					      cmd_size_in_bytes,
					      comp,
					      comp_size_in_bytes);
	if (FUNC1(comp_ctx))
		admin_queue->running_state = false;
	FUNC4(&admin_queue->q_lock, flags);

	return comp_ctx;
}