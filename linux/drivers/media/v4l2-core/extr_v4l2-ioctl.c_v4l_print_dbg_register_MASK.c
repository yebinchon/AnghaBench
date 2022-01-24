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
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  addr; int /*<<< orphan*/  name; } ;
struct v4l2_dbg_register {int reg; int /*<<< orphan*/  val; TYPE_1__ match; } ;

/* Variables and functions */
 scalar_t__ V4L2_CHIP_MATCH_I2C_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

__attribute__((used)) static void FUNC1(const void *arg, bool write_only)
{
	const struct v4l2_dbg_register *p = arg;

	FUNC0("type=%u, ", p->match.type);
	if (p->match.type == V4L2_CHIP_MATCH_I2C_DRIVER)
		FUNC0("name=%.*s, ",
				(int)sizeof(p->match.name), p->match.name);
	else
		FUNC0("addr=%u, ", p->match.addr);
	FUNC0("reg=0x%llx, val=0x%llx\n",
			p->reg, p->val);
}