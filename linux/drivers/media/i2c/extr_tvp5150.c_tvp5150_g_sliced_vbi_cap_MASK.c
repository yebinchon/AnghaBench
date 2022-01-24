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
struct v4l2_subdev {int /*<<< orphan*/  dev; } ;
struct v4l2_sliced_vbi_cap {int /*<<< orphan*/  service_set; int /*<<< orphan*/ ** service_lines; } ;
struct TYPE_2__ {int ini_line; int end_line; int /*<<< orphan*/  vbi_type; } ;
struct i2c_vbi_ram_value {TYPE_1__ type; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_vbi_ram_value*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_sliced_vbi_cap*,int /*<<< orphan*/ ,int) ; 
 struct i2c_vbi_ram_value* vbi_ram_default ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd,
				struct v4l2_sliced_vbi_cap *cap)
{
	int line, i;

	FUNC1(sd->dev, 1, debug, "g_sliced_vbi_cap\n");
	FUNC2(cap, 0, sizeof(*cap));

	for (i = 0; i < FUNC0(vbi_ram_default); i++) {
		const struct i2c_vbi_ram_value *regs = &vbi_ram_default[i];

		if (!regs->type.vbi_type)
			continue;

		for (line = regs->type.ini_line;
		     line <= regs->type.end_line;
		     line++) {
			cap->service_lines[0][line] |= regs->type.vbi_type;
		}
		cap->service_set |= regs->type.vbi_type;
	}
	return 0;
}