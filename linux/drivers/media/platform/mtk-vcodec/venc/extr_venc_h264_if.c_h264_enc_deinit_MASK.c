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
struct venc_h264_inst {scalar_t__ work_buf_allocated; int /*<<< orphan*/  vpu_inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct venc_h264_inst*) ; 
 int /*<<< orphan*/  FUNC1 (struct venc_h264_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct venc_h264_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct venc_h264_inst*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	int ret = 0;
	struct venc_h264_inst *inst = (struct venc_h264_inst *)handle;

	FUNC2(inst);

	ret = FUNC4(&inst->vpu_inst);

	if (inst->work_buf_allocated)
		FUNC0(inst);

	FUNC3(inst);
	FUNC1(inst);

	return ret;
}