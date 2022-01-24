#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int field; int height; int width; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct sta2x11_vip {int /*<<< orphan*/  slock; int /*<<< orphan*/  v4l2_dev; TYPE_2__ format; int /*<<< orphan*/  vb_vidq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVP_BFO ; 
 int /*<<< orphan*/  DVP_BFS ; 
 int /*<<< orphan*/  DVP_TFO ; 
 int /*<<< orphan*/  DVP_TFS ; 
 int /*<<< orphan*/  DVP_VMP ; 
 int EBUSY ; 
 int EINVAL ; 
#define  V4L2_FIELD_BOTTOM 130 
#define  V4L2_FIELD_INTERLACED 129 
#define  V4L2_FIELD_TOP 128 
 int /*<<< orphan*/  FUNC0 (struct sta2x11_vip*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 struct sta2x11_vip* FUNC5 (struct file*) ; 
 int FUNC6 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv,
				struct v4l2_format *f)
{
	struct sta2x11_vip *vip = FUNC5(file);
	unsigned int t_stop, b_stop, pitch;
	int ret;

	ret = FUNC6(file, priv, f);
	if (ret)
		return ret;

	if (FUNC4(&vip->vb_vidq)) {
		/* Can't change format during acquisition */
		FUNC3(&vip->v4l2_dev, "device busy\n");
		return -EBUSY;
	}
	vip->format = f->fmt.pix;
	switch (vip->format.field) {
	case V4L2_FIELD_INTERLACED:
		t_stop = ((vip->format.height / 2 - 1) << 16) |
			 (2 * vip->format.width - 1);
		b_stop = t_stop;
		pitch = 4 * vip->format.width;
		break;
	case V4L2_FIELD_TOP:
		t_stop = ((vip->format.height - 1) << 16) |
			 (2 * vip->format.width - 1);
		b_stop = (0 << 16) | (2 * vip->format.width - 1);
		pitch = 2 * vip->format.width;
		break;
	case V4L2_FIELD_BOTTOM:
		t_stop = (0 << 16) | (2 * vip->format.width - 1);
		b_stop = (vip->format.height << 16) |
			 (2 * vip->format.width - 1);
		pitch = 2 * vip->format.width;
		break;
	default:
		FUNC3(&vip->v4l2_dev, "unknown field format\n");
		return -EINVAL;
	}

	FUNC1(&vip->slock);
	/* Y-X Top Field Offset */
	FUNC0(vip, DVP_TFO, 0);
	/* Y-X Bottom Field Offset */
	FUNC0(vip, DVP_BFO, 0);
	/* Y-X Top Field Stop*/
	FUNC0(vip, DVP_TFS, t_stop);
	/* Y-X Bottom Field Stop */
	FUNC0(vip, DVP_BFS, b_stop);
	/* Video Memory Pitch */
	FUNC0(vip, DVP_VMP, pitch);
	FUNC2(&vip->slock);

	return 0;
}