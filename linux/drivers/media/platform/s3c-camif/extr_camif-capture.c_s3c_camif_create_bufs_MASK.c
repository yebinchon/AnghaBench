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
struct v4l2_create_buffers {int /*<<< orphan*/  count; } ;
struct file {int dummy; } ;
struct camif_vp {void* owner; int /*<<< orphan*/  vb_queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 int FUNC1 (int /*<<< orphan*/ *,struct v4l2_create_buffers*) ; 
 struct camif_vp* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				 struct v4l2_create_buffers *create)
{
	struct camif_vp *vp = FUNC2(file);
	int ret;

	if (vp->owner && vp->owner != priv)
		return -EBUSY;

	create->count = FUNC0(u32, 1, create->count);
	ret = FUNC1(&vp->vb_queue, create);

	if (!ret && vp->owner == NULL)
		vp->owner = priv;

	return ret;
}