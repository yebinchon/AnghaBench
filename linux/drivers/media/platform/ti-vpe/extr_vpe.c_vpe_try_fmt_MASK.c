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
struct vpe_fmt {int dummy; } ;
struct vpe_ctx {int dummy; } ;
struct v4l2_format {int /*<<< orphan*/  type; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPE_FMT_TYPE_CAPTURE ; 
 int /*<<< orphan*/  VPE_FMT_TYPE_OUTPUT ; 
 int FUNC1 (struct vpe_ctx*,struct v4l2_format*,struct vpe_fmt*,int /*<<< orphan*/ ) ; 
 struct vpe_ctx* FUNC2 (struct file*) ; 
 struct vpe_fmt* FUNC3 (struct v4l2_format*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv, struct v4l2_format *f)
{
	struct vpe_ctx *ctx = FUNC2(file);
	struct vpe_fmt *fmt = FUNC3(f);

	if (FUNC0(f->type))
		return FUNC1(ctx, f, fmt, VPE_FMT_TYPE_OUTPUT);
	else
		return FUNC1(ctx, f, fmt, VPE_FMT_TYPE_CAPTURE);
}