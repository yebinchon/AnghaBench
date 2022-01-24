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
struct pti_masterchannel {int channel; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int CONTROL_FRAME_LEN ; 
 int /*<<< orphan*/  CONTROL_ID ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int pti_control_channel ; 
 int /*<<< orphan*/  FUNC2 (struct pti_masterchannel*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct pti_masterchannel *mc,
					     const char *thread_name)
{
	/*
	 * Since we access the comm member in current's task_struct, we only
	 * need to be as large as what 'comm' in that structure is.
	 */
	char comm[TASK_COMM_LEN];
	struct pti_masterchannel mccontrol = {.master = CONTROL_ID,
					      .channel = 0};
	const char *thread_name_p;
	const char *control_format = "%3d %3d %s";
	u8 control_frame[CONTROL_FRAME_LEN];

	if (!thread_name) {
		if (!FUNC1())
			FUNC0(comm, current);
		else
			FUNC5(comm, "Interrupt", TASK_COMM_LEN);

		/* Absolutely ensure our buffer is zero terminated. */
		comm[TASK_COMM_LEN-1] = 0;
		thread_name_p = comm;
	} else {
		thread_name_p = thread_name;
	}

	mccontrol.channel = pti_control_channel;
	pti_control_channel = (pti_control_channel + 1) & 0x7f;

	FUNC3(control_frame, CONTROL_FRAME_LEN, control_format, mc->master,
		mc->channel, thread_name_p);
	FUNC2(&mccontrol, control_frame, FUNC4(control_frame));
}