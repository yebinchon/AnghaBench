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
struct tg3 {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ CPU_MODE ; 
 int CPU_MODE_HALT ; 
 scalar_t__ CPU_STATE ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(struct tg3 *tp, u32 cpu_base)
{
	int i;
	const int iters = 10000;

	for (i = 0; i < iters; i++) {
		FUNC2(cpu_base + CPU_STATE, 0xffffffff);
		FUNC2(cpu_base + CPU_MODE,  CPU_MODE_HALT);
		if (FUNC1(cpu_base + CPU_MODE) & CPU_MODE_HALT)
			break;
		if (FUNC0(tp->pdev))
			return -EBUSY;
	}

	return (i == iters) ? -EBUSY : 0;
}