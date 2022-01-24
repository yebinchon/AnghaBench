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
typedef  scalar_t__ u32 ;
struct tg3 {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPU_MODE ; 
 int CPU_MODE_HALT ; 
 scalar_t__ CPU_PC ; 
 scalar_t__ CPU_STATE ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp, u32 cpu_base, u32 pc)
{
	int i;
	const int iters = 5;

	FUNC1(cpu_base + CPU_STATE, 0xffffffff);
	FUNC2(cpu_base + CPU_PC, pc);

	for (i = 0; i < iters; i++) {
		if (FUNC0(cpu_base + CPU_PC) == pc)
			break;
		FUNC1(cpu_base + CPU_STATE, 0xffffffff);
		FUNC1(cpu_base + CPU_MODE,  CPU_MODE_HALT);
		FUNC2(cpu_base + CPU_PC, pc);
		FUNC3(1000);
	}

	return (i == iters) ? -EBUSY : 0;
}