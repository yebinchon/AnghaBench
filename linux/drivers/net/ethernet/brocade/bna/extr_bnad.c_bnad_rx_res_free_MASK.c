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
struct bnad {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  intr_info; int /*<<< orphan*/  mem_info; } ;
struct bna_res_info {scalar_t__ res_type; TYPE_1__ res_u; } ;

/* Variables and functions */
 scalar_t__ BNA_RES_T_INTR ; 
 scalar_t__ BNA_RES_T_MEM ; 
 int BNA_RX_RES_T_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bnad *bnad, struct bna_res_info *res_info)
{
	int i;

	for (i = 0; i < BNA_RX_RES_T_MAX; i++) {
		if (res_info[i].res_type == BNA_RES_T_MEM)
			FUNC0(bnad, &res_info[i].res_u.mem_info);
		else if (res_info[i].res_type == BNA_RES_T_INTR)
			FUNC1(bnad, &res_info[i].res_u.intr_info);
	}
}