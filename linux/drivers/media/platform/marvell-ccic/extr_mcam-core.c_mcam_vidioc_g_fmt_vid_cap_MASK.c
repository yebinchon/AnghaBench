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
struct TYPE_2__ {int /*<<< orphan*/  pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct mcam_camera {int /*<<< orphan*/  pix_format; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct mcam_camera* FUNC0 (struct file*) ; 

__attribute__((used)) static int FUNC1(struct file *filp, void *priv,
		struct v4l2_format *f)
{
	struct mcam_camera *cam = FUNC0(filp);

	f->fmt.pix = cam->pix_format;
	return 0;
}