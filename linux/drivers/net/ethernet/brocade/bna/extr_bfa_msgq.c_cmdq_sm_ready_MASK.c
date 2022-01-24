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
struct bfa_msgq_cmdq {int dummy; } ;
typedef  enum cmdq_event { ____Placeholder_cmdq_event } cmdq_event ;

/* Variables and functions */
#define  CMDQ_E_FAIL 130 
#define  CMDQ_E_POST 129 
#define  CMDQ_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_msgq_cmdq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cmdq_sm_dbell_wait ; 
 int /*<<< orphan*/  cmdq_sm_stopped ; 

__attribute__((used)) static void
FUNC2(struct bfa_msgq_cmdq *cmdq, enum cmdq_event event)
{
	switch (event) {
	case CMDQ_E_STOP:
	case CMDQ_E_FAIL:
		FUNC0(cmdq, cmdq_sm_stopped);
		break;

	case CMDQ_E_POST:
		FUNC0(cmdq, cmdq_sm_dbell_wait);
		break;

	default:
		FUNC1(event);
	}
}