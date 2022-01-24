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
struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int FORMAT_FLAGS_PACKED ; 
 int FUNC0 (struct v4l2_fmtdesc*) ; 
 TYPE_1__* formats ; 
 scalar_t__ no_overlay ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void  *priv,
					struct v4l2_fmtdesc *f)
{
	int rc;

	if (no_overlay > 0) {
		FUNC1("V4L2_BUF_TYPE_VIDEO_OVERLAY: no_overlay\n");
		return -EINVAL;
	}

	rc = FUNC0(f);

	if (rc < 0)
		return rc;

	if (!(formats[rc].flags & FORMAT_FLAGS_PACKED))
		return -EINVAL;

	return 0;
}