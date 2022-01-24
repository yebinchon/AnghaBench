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
struct i40e_profile_info {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct i40e_ddp_profile_list {int p_count; int /*<<< orphan*/ * p_info; } ;
typedef  scalar_t__ i40e_status ;

/* Variables and functions */
 int I40E_PROFILE_LIST_SIZE ; 
 scalar_t__ FUNC0 (struct i40e_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct i40e_profile_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct i40e_hw *hw,
				       struct i40e_profile_info *pinfo)
{
	struct i40e_ddp_profile_list *profile_list;
	u8 buff[I40E_PROFILE_LIST_SIZE];
	i40e_status status;
	int i;

	status = FUNC0(hw, buff, I40E_PROFILE_LIST_SIZE, 0,
				      NULL);
	if (status)
		return -1;

	profile_list = (struct i40e_ddp_profile_list *)buff;
	for (i = 0; i < profile_list->p_count; i++) {
		if (FUNC1(pinfo, &profile_list->p_info[i]))
			return 1;
	}
	return 0;
}