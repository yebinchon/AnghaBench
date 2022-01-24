#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {size_t index; int /*<<< orphan*/  code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 TYPE_1__* s5k4ecgx_formats ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd,
				   struct v4l2_subdev_pad_config *cfg,
				   struct v4l2_subdev_mbus_code_enum *code)
{
	if (code->index >= FUNC0(s5k4ecgx_formats))
		return -EINVAL;
	code->code = s5k4ecgx_formats[code->index].code;

	return 0;
}