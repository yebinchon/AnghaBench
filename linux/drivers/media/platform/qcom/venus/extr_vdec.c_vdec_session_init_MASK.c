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
struct venus_inst {TYPE_1__* fmt_out; } ;
struct TYPE_2__ {int /*<<< orphan*/  pixfmt; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_inst*) ; 
 int /*<<< orphan*/  FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct venus_inst *inst)
{
	int ret;

	ret = FUNC3(inst, inst->fmt_out->pixfmt);
	if (ret == -EINVAL)
		return 0;
	else if (ret)
		return ret;

	ret = FUNC4(inst, FUNC1(inst),
						FUNC0(inst));
	if (ret)
		goto deinit;

	return 0;
deinit:
	FUNC2(inst);
	return ret;
}