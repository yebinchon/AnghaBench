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
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  node_guid; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  other_vport ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC8(struct mlx5_core_dev *mdev,
				    u16 vport, u64 node_guid)
{
	int inlen = FUNC4(modify_nic_vport_context_in);
	void *nic_vport_context;
	void *in;
	int err;

	if (!vport)
		return -EINVAL;
	if (!FUNC1(mdev, vport_group_manager))
		return -EACCES;

	in = FUNC6(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC2(modify_nic_vport_context_in, in,
		 field_select.node_guid, 1);
	FUNC2(modify_nic_vport_context_in, in, vport_number, vport);
	FUNC2(modify_nic_vport_context_in, in, other_vport, 1);

	nic_vport_context = FUNC0(modify_nic_vport_context_in,
					 in, nic_vport_context);
	FUNC3(nic_vport_context, nic_vport_context, node_guid, node_guid);

	err = FUNC7(mdev, in, inlen);

	FUNC5(in);

	return err;
}