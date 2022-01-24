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
struct venus_inst {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int* intbuf_types_1xx ; 
 unsigned int* intbuf_types_4xx ; 
 int FUNC2 (struct venus_inst*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_inst*) ; 

int FUNC4(struct venus_inst *inst)
{
	const unsigned int *intbuf;
	size_t arr_sz, i;
	int ret;

	if (FUNC1(inst->core)) {
		arr_sz = FUNC0(intbuf_types_4xx);
		intbuf = intbuf_types_4xx;
	} else {
		arr_sz = FUNC0(intbuf_types_1xx);
		intbuf = intbuf_types_1xx;
	}

	for (i = 0; i < arr_sz; i++) {
		ret = FUNC2(inst, intbuf[i]);
		if (ret)
			goto error;
	}

	return 0;

error:
	FUNC3(inst);
	return ret;
}