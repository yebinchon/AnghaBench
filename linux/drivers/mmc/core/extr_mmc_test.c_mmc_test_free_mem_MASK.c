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
struct mmc_test_mem {size_t cnt; struct mmc_test_mem* arr; int /*<<< orphan*/  order; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_test_mem*) ; 

__attribute__((used)) static void FUNC2(struct mmc_test_mem *mem)
{
	if (!mem)
		return;
	while (mem->cnt--)
		FUNC0(mem->arr[mem->cnt].page,
			     mem->arr[mem->cnt].order);
	FUNC1(mem->arr);
	FUNC1(mem);
}