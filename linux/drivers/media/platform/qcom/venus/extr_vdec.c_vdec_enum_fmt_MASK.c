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
struct venus_inst {int dummy; } ;
struct venus_format {int /*<<< orphan*/  flags; int /*<<< orphan*/  pixfmt; } ;
struct v4l2_fmtdesc {int /*<<< orphan*/  flags; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  type; int /*<<< orphan*/  index; int /*<<< orphan*/  reserved; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct venus_format* FUNC0 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct venus_inst* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
	struct venus_inst *inst = FUNC2(file);
	const struct venus_format *fmt;

	FUNC1(f->reserved, 0, sizeof(f->reserved));

	fmt = FUNC0(inst, f->index, f->type);
	if (!fmt)
		return -EINVAL;

	f->pixelformat = fmt->pixfmt;
	f->flags = fmt->flags;

	return 0;
}