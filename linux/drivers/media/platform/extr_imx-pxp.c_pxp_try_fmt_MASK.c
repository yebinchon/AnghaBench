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
struct TYPE_4__ {int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  bytesperline; } ;
struct TYPE_3__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct pxp_fmt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN_H ; 
 int /*<<< orphan*/  ALIGN_W ; 
 int /*<<< orphan*/  MAX_H ; 
 int /*<<< orphan*/  MAX_W ; 
 int /*<<< orphan*/  MIN_H ; 
 int /*<<< orphan*/  MIN_W ; 
 int /*<<< orphan*/  V4L2_FIELD_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct pxp_fmt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxp_fmt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_format *f, struct pxp_fmt *fmt)
{
	FUNC2(&f->fmt.pix.width, MIN_W, MAX_W, ALIGN_W,
			      &f->fmt.pix.height, MIN_H, MAX_H, ALIGN_H, 0);

	f->fmt.pix.bytesperline = FUNC0(fmt, f->fmt.pix.width);
	f->fmt.pix.sizeimage = FUNC1(fmt, f->fmt.pix.width,
					     f->fmt.pix.height);
	f->fmt.pix.field = V4L2_FIELD_NONE;

	return 0;
}