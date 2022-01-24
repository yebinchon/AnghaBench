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
struct TYPE_2__ {int (* write_block ) (struct stmpe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct stmpe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(struct stmpe *stmpe, u8 reg, u8 length,
			const u8 *values)
{
	int ret;

	FUNC1(stmpe->dev, "wr: regs %#x (%d)\n", reg, length);
	FUNC2("stmpe wr: ", values, length);

	ret = stmpe->ci->write_block(stmpe, reg, length, values);
	if (ret < 0)
		FUNC0(stmpe->dev, "failed to write regs %#x: %d\n", reg, ret);

	return ret;
}