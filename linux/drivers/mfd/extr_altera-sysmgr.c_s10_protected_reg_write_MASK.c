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
struct arm_smccc_res {scalar_t__ a0; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_SIP_SMC_REG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 

__attribute__((used)) static int FUNC1(void *base,
				   unsigned int reg, unsigned int val)
{
	struct arm_smccc_res result;
	unsigned long sysmgr_base = (unsigned long)base;

	FUNC0(INTEL_SIP_SMC_REG_WRITE, sysmgr_base + reg,
		      val, 0, 0, 0, 0, 0, &result);

	return (int)result.a0;
}