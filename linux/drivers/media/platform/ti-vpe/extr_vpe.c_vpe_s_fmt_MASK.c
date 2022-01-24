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
struct vpe_ctx {int dummy; } ;
struct v4l2_format {int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vpe_ctx*,struct v4l2_format*) ; 
 struct vpe_ctx* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct vpe_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct vpe_ctx*) ; 
 int FUNC5 (struct vpe_ctx*) ; 
 int FUNC6 (struct file*,void*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC7(struct file *file, void *priv, struct v4l2_format *f)
{
	int ret;
	struct vpe_ctx *ctx = FUNC2(file);

	ret = FUNC6(file, priv, f);
	if (ret)
		return ret;

	ret = FUNC1(ctx, f);
	if (ret)
		return ret;

	if (FUNC0(f->type))
		FUNC4(ctx);
	else
		FUNC3(ctx);

	return FUNC5(ctx);
}