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

/* Variables and functions */
 int /*<<< orphan*/  GRU_NUM_KERNEL_DSR_BYTES ; 
 int /*<<< orphan*/  GRU_NUM_KERNEL_DSR_CL ; 
 int /*<<< orphan*/  IMA ; 
 int MQE_BUG_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XTYPE_B ; 
 int /*<<< orphan*/  copy_gpa ; 
 int /*<<< orphan*/  FUNC1 (void*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 

int FUNC6(unsigned long dest_gpa, unsigned long src_gpa,
				unsigned int bytes)
{
	void *cb;
	void *dsr;
	int ret;

	FUNC0(copy_gpa);
	if (FUNC3(GRU_NUM_KERNEL_DSR_BYTES, &cb, &dsr))
		return MQE_BUG_NO_RESOURCES;
	FUNC1(cb, src_gpa, dest_gpa, FUNC4(dsr),
		  XTYPE_B, bytes, GRU_NUM_KERNEL_DSR_CL, IMA);
	ret = FUNC5(cb);
	FUNC2(cb, dsr);
	return ret;
}