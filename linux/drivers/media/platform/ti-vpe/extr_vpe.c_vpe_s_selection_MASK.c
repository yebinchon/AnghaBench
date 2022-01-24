#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ left; scalar_t__ top; scalar_t__ width; scalar_t__ height; } ;
struct vpe_q_data {TYPE_1__ c_rect; } ;
struct vpe_ctx {int /*<<< orphan*/  dev; } ;
struct v4l2_selection {TYPE_1__ r; int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct vpe_ctx*,struct v4l2_selection*) ; 
 struct vpe_ctx* FUNC1 (struct file*) ; 
 struct vpe_q_data* FUNC2 (struct vpe_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
		struct v4l2_selection *s)
{
	struct vpe_ctx *ctx = FUNC1(file);
	struct vpe_q_data *q_data;
	struct v4l2_selection sel = *s;
	int ret;

	ret = FUNC0(ctx, &sel);
	if (ret)
		return ret;

	q_data = FUNC2(ctx, sel.type);
	if (!q_data)
		return -EINVAL;

	if ((q_data->c_rect.left == sel.r.left) &&
			(q_data->c_rect.top == sel.r.top) &&
			(q_data->c_rect.width == sel.r.width) &&
			(q_data->c_rect.height == sel.r.height)) {
		FUNC4(ctx->dev,
			"requested crop/compose values are already set\n");
		return 0;
	}

	q_data->c_rect = sel.r;

	return FUNC3(ctx);
}