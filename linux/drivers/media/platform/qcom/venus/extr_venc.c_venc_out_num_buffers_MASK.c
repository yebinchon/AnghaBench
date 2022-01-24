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
struct venus_inst {int dummy; } ;
struct hfi_buffer_requirements {unsigned int count_actual; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_BUFFER_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct venus_inst*) ; 
 int FUNC1 (struct venus_inst*) ; 
 int FUNC2 (struct venus_inst*,int /*<<< orphan*/ ,struct hfi_buffer_requirements*) ; 

__attribute__((used)) static int FUNC3(struct venus_inst *inst, unsigned int *num)
{
	struct hfi_buffer_requirements bufreq;
	int ret;

	ret = FUNC1(inst);
	if (ret)
		return ret;

	ret = FUNC2(inst, HFI_BUFFER_INPUT, &bufreq);

	*num = bufreq.count_actual;

	FUNC0(inst);

	return ret;
}