#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct venus_inst {TYPE_1__* fmt_out; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_2__* fmt_cap; } ;
struct TYPE_4__ {int /*<<< orphan*/  pixfmt; } ;
struct TYPE_3__ {int /*<<< orphan*/  pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_BUFFER_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct venus_inst*) ; 
 int FUNC1 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct venus_inst*) ; 
 int FUNC3 (struct venus_inst*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct venus_inst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct venus_inst *inst)
{
	int ret;

	ret = FUNC1(inst, inst->fmt_cap->pixfmt);
	if (ret)
		return ret;

	ret = FUNC4(inst, inst->width,
						inst->height);
	if (ret)
		goto deinit;

	ret = FUNC5(inst, inst->width,
						 inst->height,
						 HFI_BUFFER_OUTPUT);
	if (ret)
		goto deinit;

	ret = FUNC3(inst, inst->fmt_out->pixfmt);
	if (ret)
		goto deinit;

	ret = FUNC2(inst);
	if (ret)
		goto deinit;

	return 0;
deinit:
	FUNC0(inst);
	return ret;
}