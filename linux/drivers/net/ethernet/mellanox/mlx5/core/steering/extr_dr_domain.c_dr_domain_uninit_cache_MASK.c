#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * recalc_cs_ft; } ;
struct TYPE_4__ {int num_vports; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;
struct mlx5dr_domain {TYPE_3__ cache; TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_domain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx5dr_domain *dmn)
{
	int i;

	for (i = 0; i < dmn->info.caps.num_vports; i++) {
		if (!dmn->cache.recalc_cs_ft[i])
			continue;

		FUNC1(dmn, dmn->cache.recalc_cs_ft[i]);
	}

	FUNC0(dmn->cache.recalc_cs_ft);
}