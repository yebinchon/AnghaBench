#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i40e_veb {int bridge_mode; struct i40e_pf* pf; } ;
struct TYPE_3__ {int debug_mask; } ;
struct i40e_pf {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BRIDGE_MODE_VEPA ; 
 int I40E_DEBUG_LAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 

__attribute__((used)) static void FUNC3(struct i40e_veb *veb)
{
	struct i40e_pf *pf = veb->pf;

	if (pf->hw.debug_mask & I40E_DEBUG_LAN)
		FUNC0(&pf->pdev->dev, "enabling bridge mode: %s\n",
			 veb->bridge_mode == BRIDGE_MODE_VEPA ? "VEPA" : "VEB");
	if (veb->bridge_mode & BRIDGE_MODE_VEPA)
		FUNC1(pf);
	else
		FUNC2(pf);
}