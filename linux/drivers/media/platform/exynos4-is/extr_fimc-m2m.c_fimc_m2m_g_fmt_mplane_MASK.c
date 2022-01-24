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
struct v4l2_format {int /*<<< orphan*/  type; } ;
struct fimc_frame {int dummy; } ;
struct fimc_ctx {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fimc_frame*) ; 
 int FUNC1 (struct fimc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_frame*,struct v4l2_format*) ; 
 struct fimc_frame* FUNC3 (struct fimc_ctx*,int /*<<< orphan*/ ) ; 
 struct fimc_ctx* FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *fh,
				 struct v4l2_format *f)
{
	struct fimc_ctx *ctx = FUNC4(fh);
	struct fimc_frame *frame = FUNC3(ctx, f->type);

	if (FUNC0(frame))
		return FUNC1(frame);

	FUNC2(frame, f);
	return 0;
}