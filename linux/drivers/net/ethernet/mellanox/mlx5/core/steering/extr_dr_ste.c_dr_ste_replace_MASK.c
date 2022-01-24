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
struct mlx5dr_ste {int /*<<< orphan*/  rule_list; int /*<<< orphan*/  refcount; TYPE_1__* next_htbl; int /*<<< orphan*/  hw_ste; } ;
struct TYPE_2__ {struct mlx5dr_ste* pointing_ste; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_STE_SIZE_REDUCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx5dr_ste *dst, struct mlx5dr_ste *src)
{
	FUNC2(dst->hw_ste, src->hw_ste, DR_STE_SIZE_REDUCED);
	dst->next_htbl = src->next_htbl;
	if (dst->next_htbl)
		dst->next_htbl->pointing_ste = dst;

	FUNC4(&dst->refcount, FUNC3(&src->refcount));

	FUNC0(&dst->rule_list);
	FUNC1(&src->rule_list, &dst->rule_list);
}