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
struct file {int dummy; } ;

/* Variables and functions */
 int EBADRQC ; 
#define  GRU_CREATE_CONTEXT 137 
#define  GRU_DUMP_CHIPLET_STATE 136 
#define  GRU_GET_CONFIG_INFO 135 
#define  GRU_GET_GSEG_STATISTICS 134 
#define  GRU_KTEST 133 
#define  GRU_SET_CONTEXT_OPTION 132 
#define  GRU_USER_CALL_OS 131 
#define  GRU_USER_FLUSH_TLB 130 
#define  GRU_USER_GET_EXCEPTION_DETAIL 129 
#define  GRU_USER_UNLOAD_CONTEXT 128 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct file*,unsigned int,unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 int FUNC9 (unsigned long) ; 
 int FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  grudev ; 

__attribute__((used)) static long FUNC11(struct file *file, unsigned int req,
				    unsigned long arg)
{
	int err = -EBADRQC;

	FUNC1(grudev, "file %p, req 0x%x, 0x%lx\n", file, req, arg);

	switch (req) {
	case GRU_CREATE_CONTEXT:
		err = FUNC0(arg);
		break;
	case GRU_SET_CONTEXT_OPTION:
		err = FUNC8(arg);
		break;
	case GRU_USER_GET_EXCEPTION_DETAIL:
		err = FUNC4(arg);
		break;
	case GRU_USER_UNLOAD_CONTEXT:
		err = FUNC10(arg);
		break;
	case GRU_USER_FLUSH_TLB:
		err = FUNC9(arg);
		break;
	case GRU_USER_CALL_OS:
		err = FUNC6(arg);
		break;
	case GRU_GET_GSEG_STATISTICS:
		err = FUNC5(arg);
		break;
	case GRU_KTEST:
		err = FUNC7(arg);
		break;
	case GRU_GET_CONFIG_INFO:
		err = FUNC3(arg);
		break;
	case GRU_DUMP_CHIPLET_STATE:
		err = FUNC2(arg);
		break;
	}
	return err;
}