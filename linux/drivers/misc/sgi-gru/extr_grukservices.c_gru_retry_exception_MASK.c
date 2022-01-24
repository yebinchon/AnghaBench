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
struct gru_control_block_status {int icmd; } ;
struct control_block_extended_exc_detail {int ecause; int cbrexecstatus; } ;

/* Variables and functions */
 int CBR_EXS_ABORT_OCC ; 
 int CBS_EXCEPTION ; 
 scalar_t__ CBS_IDLE ; 
 int EXCEPTION_RETRY_BITS ; 
 int EXCEPTION_RETRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct gru_control_block_status*) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct control_block_extended_exc_detail*) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct gru_control_block_status*) ; 

__attribute__((used)) static int FUNC4(void *cb)
{
	struct gru_control_block_status *gen = (void *)cb;
	struct control_block_extended_exc_detail excdet;
	int retry = EXCEPTION_RETRY_LIMIT;

	while (1)  {
		if (FUNC3(gen) == CBS_IDLE)
			return CBS_IDLE;
		if (FUNC2(cb))
			return CBS_EXCEPTION;
		FUNC1(cb, &excdet);
		if ((excdet.ecause & ~EXCEPTION_RETRY_BITS) ||
				(excdet.cbrexecstatus & CBR_EXS_ABORT_OCC))
			break;
		if (retry-- == 0)
			break;
		gen->icmd = 1;
		FUNC0(gen);
	}
	return CBS_EXCEPTION;
}