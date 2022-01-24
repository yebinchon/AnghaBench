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
typedef  int /*<<< orphan*/  u8 ;
struct i40e_virt_mem {scalar_t__ va; } ;
struct i40e_hw {int dummy; } ;
struct i40e_dcbx_config {int dummy; } ;
typedef  scalar_t__ i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_LLDPDU_SIZE ; 
 scalar_t__ FUNC0 (struct i40e_hw*,struct i40e_virt_mem*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,struct i40e_virt_mem*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct i40e_dcbx_config*) ; 

i40e_status FUNC4(struct i40e_hw *hw, u8 mib_type,
				   u8 bridgetype,
				   struct i40e_dcbx_config *dcbcfg)
{
	i40e_status ret = 0;
	struct i40e_virt_mem mem;
	u8 *lldpmib;

	/* Allocate the LLDPDU */
	ret = FUNC0(hw, &mem, I40E_LLDPDU_SIZE);
	if (ret)
		return ret;

	lldpmib = (u8 *)mem.va;
	ret = FUNC1(hw, bridgetype, mib_type,
				   (void *)lldpmib, I40E_LLDPDU_SIZE,
				   NULL, NULL, NULL);
	if (ret)
		goto free_mem;

	/* Parse LLDP MIB to get dcb configuration */
	ret = FUNC3(lldpmib, dcbcfg);

free_mem:
	FUNC2(hw, &mem);
	return ret;
}