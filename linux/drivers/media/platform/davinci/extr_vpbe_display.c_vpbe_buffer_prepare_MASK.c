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
struct TYPE_3__ {int /*<<< orphan*/  sizeimage; } ;
struct vpbe_layer {TYPE_1__ pix_fmt; TYPE_2__* disp_dev; } ;
struct vpbe_device {int /*<<< orphan*/  v4l2_dev; } ;
struct vb2_queue {int dummy; } ;
struct vb2_buffer {struct vb2_queue* vb2_queue; } ;
struct TYPE_4__ {struct vpbe_device* vpbe_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 struct vpbe_layer* FUNC4 (struct vb2_queue*) ; 
 scalar_t__ FUNC5 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vb2_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct vb2_buffer *vb)
{
	struct vb2_queue *q = vb->vb2_queue;
	struct vpbe_layer *layer = FUNC4(q);
	struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;
	unsigned long addr;

	FUNC1(1, debug, &vpbe_dev->v4l2_dev,
				"vpbe_buffer_prepare\n");

	FUNC7(vb, 0, layer->pix_fmt.sizeimage);
	if (FUNC5(vb, 0) > FUNC6(vb, 0))
		return -EINVAL;

	addr = FUNC3(vb, 0);
	if (!FUNC0(addr, 8)) {
		FUNC2(&vpbe_dev->v4l2_dev,
			 "buffer_prepare:offset is not aligned to 32 bytes\n");
		return -EINVAL;
	}
	return 0;
}