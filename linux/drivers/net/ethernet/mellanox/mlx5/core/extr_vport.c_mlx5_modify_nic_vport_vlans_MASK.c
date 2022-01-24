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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
struct TYPE_2__ {int /*<<< orphan*/  addresses_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT ; 
 int MLX5_NVPRT_LIST_TYPE_VLAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowed_list_size ; 
 int /*<<< orphan*/  allowed_list_type ; 
 int /*<<< orphan*/ * current_uc_mac_address ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_vlan_list ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  modify_nic_vport_context_out ; 
 int /*<<< orphan*/  nic_vport_context ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  vlan ; 
 int /*<<< orphan*/  vlan_layout ; 

int FUNC9(struct mlx5_core_dev *dev,
				u16 vlans[],
				int list_size)
{
	u32 out[FUNC4(modify_nic_vport_context_out)];
	void *nic_vport_ctx;
	int max_list_size;
	int in_sz;
	void *in;
	int err;
	int i;

	max_list_size = 1 << FUNC1(dev, log_max_vlan_list);

	if (list_size > max_list_size)
		return -ENOSPC;

	in_sz = FUNC3(modify_nic_vport_context_in) +
		list_size * FUNC3(vlan_layout);

	FUNC7(out, 0, sizeof(out));
	in = FUNC6(in_sz, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC2(modify_nic_vport_context_in, in, opcode,
		 MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT);
	FUNC2(modify_nic_vport_context_in, in,
		 field_select.addresses_list, 1);

	nic_vport_ctx = FUNC0(modify_nic_vport_context_in, in,
				     nic_vport_context);

	FUNC2(nic_vport_context, nic_vport_ctx,
		 allowed_list_type, MLX5_NVPRT_LIST_TYPE_VLAN);
	FUNC2(nic_vport_context, nic_vport_ctx,
		 allowed_list_size, list_size);

	for (i = 0; i < list_size; i++) {
		void *vlan_addr = FUNC0(nic_vport_context,
					       nic_vport_ctx,
					       current_uc_mac_address[i]);
		FUNC2(vlan_layout, vlan_addr, vlan, vlans[i]);
	}

	err = FUNC8(dev, in, in_sz, out, sizeof(out));
	FUNC5(in);
	return err;
}