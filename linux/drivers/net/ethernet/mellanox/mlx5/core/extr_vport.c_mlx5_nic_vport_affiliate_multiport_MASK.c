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
struct TYPE_4__ {int /*<<< orphan*/  affiliation; } ;
struct TYPE_3__ {int /*<<< orphan*/  affiliation_criteria; int /*<<< orphan*/  affiliated_vhca_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  affiliate_nic_vport_criteria ; 
 TYPE_2__ field_select ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_1__ nic_vport_context ; 
 int /*<<< orphan*/  vhca_id ; 

int FUNC8(struct mlx5_core_dev *master_mdev,
				       struct mlx5_core_dev *port_mdev)
{
	int inlen = FUNC2(modify_nic_vport_context_in);
	void *in;
	int err;

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	err = FUNC7(port_mdev);
	if (err)
		goto free;

	FUNC1(modify_nic_vport_context_in, in, field_select.affiliation, 1);
	FUNC1(modify_nic_vport_context_in, in,
		 nic_vport_context.affiliated_vhca_id,
		 FUNC0(master_mdev, vhca_id));
	FUNC1(modify_nic_vport_context_in, in,
		 nic_vport_context.affiliation_criteria,
		 FUNC0(port_mdev, affiliate_nic_vport_criteria));

	err = FUNC5(port_mdev, in, inlen);
	if (err)
		FUNC6(port_mdev);

free:
	FUNC3(in);
	return err;
}