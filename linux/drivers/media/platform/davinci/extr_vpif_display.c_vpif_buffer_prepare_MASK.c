#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vb2_v4l2_buffer {int /*<<< orphan*/  field; } ;
struct vb2_buffer {TYPE_4__* vb2_queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  field; int /*<<< orphan*/  sizeimage; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;
struct common_obj {scalar_t__ cbtm_off; scalar_t__ ctop_off; scalar_t__ ybtm_off; scalar_t__ ytop_off; TYPE_3__ fmt; } ;
struct channel_obj {struct common_obj* common; } ;
struct TYPE_8__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ V4L2_BUF_TYPE_SLICED_VBI_OUTPUT ; 
 size_t VPIF_VIDEO_INDEX ; 
 struct vb2_v4l2_buffer* FUNC1 (struct vb2_buffer*) ; 
 unsigned long FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct channel_obj* FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct vb2_buffer *vb)
{
	struct vb2_v4l2_buffer *vbuf = FUNC1(vb);
	struct channel_obj *ch = FUNC3(vb->vb2_queue);
	struct common_obj *common;

	common = &ch->common[VPIF_VIDEO_INDEX];

	FUNC6(vb, 0, common->fmt.fmt.pix.sizeimage);
	if (FUNC4(vb, 0) > FUNC5(vb, 0))
		return -EINVAL;

	vbuf->field = common->fmt.fmt.pix.field;

	if (vb->vb2_queue->type != V4L2_BUF_TYPE_SLICED_VBI_OUTPUT) {
		unsigned long addr = FUNC2(vb, 0);

		if (!FUNC0(addr + common->ytop_off) ||
			!FUNC0(addr + common->ybtm_off) ||
			!FUNC0(addr + common->ctop_off) ||
			!FUNC0(addr + common->cbtm_off)) {
			FUNC7("buffer offset not aligned to 8 bytes\n");
			return -EINVAL;
		}
	}

	return 0;
}