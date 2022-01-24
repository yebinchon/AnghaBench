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
struct v4l2_fmtdesc {scalar_t__ index; int /*<<< orphan*/  pixelformat; } ;
struct fimc_fmt {int /*<<< orphan*/  fourcc; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FIMC_ISP_NUM_FORMATS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct fimc_fmt* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			      struct v4l2_fmtdesc *f)
{
	const struct fimc_fmt *fmt;

	if (f->index >= FIMC_ISP_NUM_FORMATS)
		return -EINVAL;

	fmt = FUNC1(NULL, NULL, f->index);
	if (FUNC0(fmt == NULL))
		return -EINVAL;

	f->pixelformat = fmt->fourcc;

	return 0;
}