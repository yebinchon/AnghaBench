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
struct venus_inst {scalar_t__ session_type; int /*<<< orphan*/  delayed_process_work; int /*<<< orphan*/  delayed_process; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ VIDC_SESSION_TYPE_DEC ; 
 int /*<<< orphan*/  delayed_process_buf_func ; 

void FUNC2(struct venus_inst *inst)
{
	if (inst->session_type == VIDC_SESSION_TYPE_DEC) {
		FUNC0(&inst->delayed_process);
		FUNC1(&inst->delayed_process_work,
			  delayed_process_buf_func);
	}
}