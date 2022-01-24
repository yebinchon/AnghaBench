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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_hw {scalar_t__ back; } ;
struct i40e_dma_mem {int /*<<< orphan*/  va; int /*<<< orphan*/  pa; int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct i40e_hw *hw, struct i40e_dma_mem *mem,
			    u64 size, u32 alignment)
{
	struct i40e_pf *pf = (struct i40e_pf *)hw->back;

	mem->size = FUNC0(size, alignment);
	mem->va = FUNC1(&pf->pdev->dev, mem->size, &mem->pa,
				     GFP_KERNEL);
	if (!mem->va)
		return -ENOMEM;

	return 0;
}