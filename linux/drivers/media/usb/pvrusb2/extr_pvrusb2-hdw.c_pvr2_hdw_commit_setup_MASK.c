#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pvr2_hdw {int force_dirty; unsigned int control_cnt; scalar_t__ state_pipeline_config; struct pvr2_ctrl* controls; } ;
struct pvr2_ctrl {TYPE_1__* info; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  (* get_value ) (struct pvr2_ctrl*,int*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  (* is_dirty ) (struct pvr2_ctrl*) ;} ;

/* Variables and functions */
 int PVR2_TRACE_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_ctrl*,int /*<<< orphan*/ ,int,char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,unsigned int,char*) ; 
 int pvrusb2_debug ; 
 unsigned int FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_ctrl*,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct pvr2_hdw *hdw)
{
	unsigned int idx;
	struct pvr2_ctrl *cptr;
	int value;
	int commit_flag = hdw->force_dirty;
	char buf[100];
	unsigned int bcnt,ccnt;

	for (idx = 0; idx < hdw->control_cnt; idx++) {
		cptr = hdw->controls + idx;
		if (!cptr->info->is_dirty) continue;
		if (!cptr->info->is_dirty(cptr)) continue;
		commit_flag = !0;

		if (!(pvrusb2_debug & PVR2_TRACE_CTL)) continue;
		bcnt = FUNC4(buf,sizeof(buf),"\"%s\" <-- ",
				 cptr->info->name);
		value = 0;
		cptr->info->get_value(cptr,&value);
		FUNC1(cptr,~0,value,
						buf+bcnt,
						sizeof(buf)-bcnt,&ccnt);
		bcnt += ccnt;
		bcnt += FUNC4(buf+bcnt,sizeof(buf)-bcnt," <%s>",
				  FUNC0(cptr->info->type));
		FUNC3(PVR2_TRACE_CTL,
			   "/*--TRACE_COMMIT--*/ %.*s",
			   bcnt,buf);
	}

	if (!commit_flag) {
		/* Nothing has changed */
		return 0;
	}

	hdw->state_pipeline_config = 0;
	FUNC7("state_pipeline_config",hdw->state_pipeline_config);
	FUNC2(hdw);

	return !0;
}