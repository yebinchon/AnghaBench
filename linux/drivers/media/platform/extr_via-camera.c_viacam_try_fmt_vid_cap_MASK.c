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
struct via_camera {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct via_camera*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct via_camera* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *filp, void *priv,
		struct v4l2_format *fmt)
{
	struct via_camera *cam = FUNC1(filp);
	struct v4l2_format sfmt;

	return FUNC0(cam, &fmt->fmt.pix, &sfmt.fmt.pix);
}