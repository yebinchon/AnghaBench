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
struct venc_h264_inst {int /*<<< orphan*/  pps_buf; int /*<<< orphan*/  ctx; int /*<<< orphan*/ * work_bufs; } ;

/* Variables and functions */
 int VENC_H264_VPU_WORK_BUF_MAX ; 
 int VENC_H264_VPU_WORK_BUF_SKIP_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct venc_h264_inst*) ; 
 int /*<<< orphan*/  FUNC1 (struct venc_h264_inst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct venc_h264_inst *inst)
{
	int i;

	FUNC0(inst);

	/* Except the SKIP_FRAME buffers,
	 * other buffers need to be freed by AP.
	 */
	for (i = 0; i < VENC_H264_VPU_WORK_BUF_MAX; i++) {
		if (i != VENC_H264_VPU_WORK_BUF_SKIP_FRAME)
			FUNC2(inst->ctx, &inst->work_bufs[i]);
	}

	FUNC2(inst->ctx, &inst->pps_buf);

	FUNC1(inst);
}