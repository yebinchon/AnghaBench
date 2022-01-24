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
typedef  int /*<<< orphan*/  u8 ;
struct stmpe {int /*<<< orphan*/  dev; TYPE_1__* ci; } ;
struct TYPE_2__ {int (* read_block ) (struct stmpe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stmpe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct stmpe *stmpe, u8 reg, u8 length,
			      u8 *values)
{
	int ret;

	ret = stmpe->ci->read_block(stmpe, reg, length, values);
	if (ret < 0)
		FUNC0(stmpe->dev, "failed to read regs %#x: %d\n", reg, ret);

	FUNC1(stmpe->dev, "rd: reg %#x (%d) => ret %#x\n", reg, length, ret);
	FUNC2("stmpe rd: ", values, length);

	return ret;
}