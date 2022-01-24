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
struct v4l2_subdev_format {int /*<<< orphan*/  format; int /*<<< orphan*/  which; } ;
struct v4l2_pix_format {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  source; } ;
struct stm32_dcmi {TYPE_1__ entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int /*<<< orphan*/  get_fmt ; 
 int /*<<< orphan*/  pad ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_pix_format*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC2(struct stm32_dcmi *dcmi,
				  struct v4l2_pix_format *pix)
{
	struct v4l2_subdev_format fmt = {
		.which = V4L2_SUBDEV_FORMAT_ACTIVE,
	};
	int ret;

	ret = FUNC1(dcmi->entity.source, pad, get_fmt, NULL, &fmt);
	if (ret)
		return ret;

	FUNC0(pix, &fmt.format);

	return 0;
}