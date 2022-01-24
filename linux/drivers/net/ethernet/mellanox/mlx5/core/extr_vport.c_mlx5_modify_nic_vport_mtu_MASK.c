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
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtu; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ field_select ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_1__ nic_vport_context ; 

int FUNC5(struct mlx5_core_dev *mdev, u16 mtu)
{
	int inlen = FUNC1(modify_nic_vport_context_in);
	void *in;
	int err;

	in = FUNC3(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC0(modify_nic_vport_context_in, in, field_select.mtu, 1);
	FUNC0(modify_nic_vport_context_in, in, nic_vport_context.mtu, mtu);

	err = FUNC4(mdev, in, inlen);

	FUNC2(in);
	return err;
}