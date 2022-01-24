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
struct i40e_hw {int dummy; } ;
struct i40e_aqc_queue_shutdown {int /*<<< orphan*/  driver_unloading; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_AQ_DRIVER_UNLOADING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_aqc_opc_queue_shutdown ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

i40e_status FUNC3(struct i40e_hw *hw,
					     bool unloading)
{
	struct i40e_aq_desc desc;
	struct i40e_aqc_queue_shutdown *cmd =
		(struct i40e_aqc_queue_shutdown *)&desc.params.raw;
	i40e_status status;

	FUNC2(&desc,
					  i40e_aqc_opc_queue_shutdown);

	if (unloading)
		cmd->driver_unloading = FUNC0(I40E_AQ_DRIVER_UNLOADING);
	status = FUNC1(hw, &desc, NULL, 0, NULL);

	return status;
}