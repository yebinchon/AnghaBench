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
struct vdec_h264_inst {int /*<<< orphan*/  vpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vdec_h264_inst*) ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_h264_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_h264_inst*) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_h264_inst*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *h_vdec)
{
	struct vdec_h264_inst *inst = (struct vdec_h264_inst *)h_vdec;

	FUNC3(inst);

	FUNC4(&inst->vpu);
	FUNC1(inst);
	FUNC0(inst);

	FUNC2(inst);
}