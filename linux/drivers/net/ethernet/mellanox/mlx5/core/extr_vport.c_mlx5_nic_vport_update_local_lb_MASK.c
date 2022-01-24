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
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  disable_uc_local_lb; int /*<<< orphan*/  disable_mc_local_lb; } ;
struct TYPE_3__ {int /*<<< orphan*/  disable_uc_local_lb; int /*<<< orphan*/  disable_mc_local_lb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disable_local_lb_mc ; 
 int /*<<< orphan*/  disable_local_lb_uc ; 
 TYPE_2__ field_select ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*,char*) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_1__ nic_vport_context ; 

int FUNC7(struct mlx5_core_dev *mdev, bool enable)
{
	int inlen = FUNC2(modify_nic_vport_context_in);
	void *in;
	int err;

	if (!FUNC0(mdev, disable_local_lb_mc) &&
	    !FUNC0(mdev, disable_local_lb_uc))
		return 0;

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_nic_vport_context_in, in,
		 nic_vport_context.disable_mc_local_lb, !enable);
	FUNC1(modify_nic_vport_context_in, in,
		 nic_vport_context.disable_uc_local_lb, !enable);

	if (FUNC0(mdev, disable_local_lb_mc))
		FUNC1(modify_nic_vport_context_in, in,
			 field_select.disable_mc_local_lb, 1);

	if (FUNC0(mdev, disable_local_lb_uc))
		FUNC1(modify_nic_vport_context_in, in,
			 field_select.disable_uc_local_lb, 1);

	err = FUNC6(mdev, in, inlen);

	if (!err)
		FUNC5(mdev, "%s local_lb\n",
			      enable ? "enable" : "disable");

	FUNC3(in);
	return err;
}