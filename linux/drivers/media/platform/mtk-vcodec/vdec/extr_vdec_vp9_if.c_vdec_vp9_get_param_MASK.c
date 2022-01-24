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
struct vdec_vp9_inst {int dummy; } ;
typedef  enum vdec_get_param_type { ____Placeholder_vdec_get_param_type } vdec_get_param_type ;

/* Variables and functions */
 int EINVAL ; 
#define  GET_PARAM_CROP_INFO 132 
#define  GET_PARAM_DISP_FRAME_BUFFER 131 
#define  GET_PARAM_DPB_SIZE 130 
#define  GET_PARAM_FREE_FRAME_BUFFER 129 
#define  GET_PARAM_PIC_INFO 128 
 unsigned int MAX_VP9_DPB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vdec_vp9_inst*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct vdec_vp9_inst*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct vdec_vp9_inst*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct vdec_vp9_inst*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct vdec_vp9_inst*,char*,int) ; 

__attribute__((used)) static int FUNC5(void *h_vdec, enum vdec_get_param_type type,
			      void *out)
{
	struct vdec_vp9_inst *inst = (struct vdec_vp9_inst *)h_vdec;
	int ret = 0;

	switch (type) {
	case GET_PARAM_DISP_FRAME_BUFFER:
		FUNC1(inst, out);
		break;
	case GET_PARAM_FREE_FRAME_BUFFER:
		FUNC2(inst, out);
		break;
	case GET_PARAM_PIC_INFO:
		FUNC3(inst, out);
		break;
	case GET_PARAM_DPB_SIZE:
		*((unsigned int *)out) = MAX_VP9_DPB_SIZE;
		break;
	case GET_PARAM_CROP_INFO:
		FUNC0(inst, out);
		break;
	default:
		FUNC4(inst, "not supported param type %d", type);
		ret = -EINVAL;
		break;
	}

	return ret;
}