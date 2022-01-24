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
struct media_entity {int dummy; } ;
struct file {int dummy; } ;
struct camif_vp {void* owner; int /*<<< orphan*/  vb_queue; int /*<<< orphan*/  id; struct camif_dev* camif; } ;
struct TYPE_4__ {TYPE_1__* sd; } ;
struct camif_dev {int /*<<< orphan*/  m_pipeline; TYPE_2__ sensor; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_3__ {struct media_entity entity; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int FUNC0 (struct camif_dev*) ; 
 int FUNC1 (struct media_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct media_entity*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct camif_vp*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct camif_vp* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv,
			      enum v4l2_buf_type type)
{
	struct camif_vp *vp = FUNC6(file);
	struct camif_dev *camif = vp->camif;
	struct media_entity *sensor = &camif->sensor.sd->entity;
	int ret;

	FUNC3("[vp%d]\n", vp->id);

	if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;

	if (vp->owner && vp->owner != priv)
		return -EBUSY;

	if (FUNC4(vp))
		return 0;

	ret = FUNC1(sensor, camif->m_pipeline);
	if (ret < 0)
		return ret;

	ret = FUNC0(camif);
	if (ret < 0) {
		FUNC2(sensor);
		return ret;
	}

	return FUNC5(&vp->vb_queue, type);
}