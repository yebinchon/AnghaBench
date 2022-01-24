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
struct ena_com_admin_queue {scalar_t__ running_state; } ;
struct ena_admin_aq_entry {int dummy; } ;
struct ena_admin_acq_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct ena_comp_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ena_comp_ctx*) ; 
 int FUNC2 (struct ena_comp_ctx*) ; 
 struct ena_comp_ctx* FUNC3 (struct ena_com_admin_queue*,struct ena_admin_aq_entry*,size_t,struct ena_admin_acq_entry*,size_t) ; 
 int FUNC4 (struct ena_comp_ctx*,struct ena_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ena_com_admin_queue *admin_queue,
				  struct ena_admin_aq_entry *cmd,
				  size_t cmd_size,
				  struct ena_admin_acq_entry *comp,
				  size_t comp_size)
{
	struct ena_comp_ctx *comp_ctx;
	int ret;

	comp_ctx = FUNC3(admin_queue, cmd, cmd_size,
					    comp, comp_size);
	if (FUNC1(comp_ctx)) {
		if (comp_ctx == FUNC0(-ENODEV))
			FUNC5("Failed to submit command [%ld]\n",
				 FUNC2(comp_ctx));
		else
			FUNC6("Failed to submit command [%ld]\n",
			       FUNC2(comp_ctx));

		return FUNC2(comp_ctx);
	}

	ret = FUNC4(comp_ctx, admin_queue);
	if (FUNC7(ret)) {
		if (admin_queue->running_state)
			FUNC6("Failed to process command. ret = %d\n", ret);
		else
			FUNC5("Failed to process command. ret = %d\n", ret);
	}
	return ret;
}