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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct camif_vp {scalar_t__ payload; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * out_fmt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 struct camif_vp* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct camif_vp *vp = FUNC1(vb->vb2_queue);

	if (vp->out_fmt == NULL)
		return -EINVAL;

	if (FUNC2(vb, 0) < vp->payload) {
		FUNC0(&vp->vdev, "buffer too small: %lu, required: %u\n",
			 FUNC2(vb, 0), vp->payload);
		return -EINVAL;
	}
	FUNC3(vb, 0, vp->payload);

	return 0;
}