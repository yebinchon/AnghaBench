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
struct denali_controller {int nbanks; scalar_t__ reg; } ;

/* Variables and functions */
 scalar_t__ GLOBAL_INT_ENABLE ; 
 int /*<<< orphan*/  GLOBAL_INT_EN_FLAG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  U32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct denali_controller *denali)
{
	int i;

	for (i = 0; i < denali->nbanks; i++)
		FUNC1(U32_MAX, denali->reg + FUNC0(i));
	FUNC1(GLOBAL_INT_EN_FLAG, denali->reg + GLOBAL_INT_ENABLE);
}