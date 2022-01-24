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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;
typedef  enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int V4L2_CTRL_TYPE_INTEGER_MENU ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const**,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct v4l2_ctrl* FUNC2 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

struct v4l2_ctrl *FUNC3(struct v4l2_ctrl_handler *hdl,
			const struct v4l2_ctrl_ops *ops,
			u32 id, u8 _max, u8 _def, const s64 *qmenu_int)
{
	const char *name;
	enum v4l2_ctrl_type type;
	s64 min;
	u64 step;
	s64 max = _max;
	s64 def = _def;
	u32 flags;

	FUNC1(id, &name, &type, &min, &max, &step, &def, &flags);
	if (type != V4L2_CTRL_TYPE_INTEGER_MENU) {
		FUNC0(hdl, -EINVAL);
		return NULL;
	}
	return FUNC2(hdl, ops, NULL, id, name, type,
			     0, max, 0, def, NULL, 0,
			     flags, NULL, qmenu_int, NULL);
}