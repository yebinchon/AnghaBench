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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  permanent_address; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  nic_vport_context ; 
 int /*<<< orphan*/  other_vport ; 
 int /*<<< orphan*/  permanent_address ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC7(struct mlx5_core_dev *mdev,
				      u16 vport, u8 *addr)
{
	void *in;
	int inlen = FUNC2(modify_nic_vport_context_in);
	int err;
	void *nic_vport_ctx;
	u8 *perm_mac;

	in = FUNC5(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_nic_vport_context_in, in,
		 field_select.permanent_address, 1);
	FUNC1(modify_nic_vport_context_in, in, vport_number, vport);
	FUNC1(modify_nic_vport_context_in, in, other_vport, 1);

	nic_vport_ctx = FUNC0(modify_nic_vport_context_in,
				     in, nic_vport_context);
	perm_mac = FUNC0(nic_vport_context, nic_vport_ctx,
				permanent_address);

	FUNC3(&perm_mac[2], addr);

	err = FUNC6(mdev, in, inlen);

	FUNC4(in);

	return err;
}