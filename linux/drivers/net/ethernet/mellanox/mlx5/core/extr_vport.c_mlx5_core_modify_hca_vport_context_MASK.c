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
typedef  int u8 ;
struct mlx5_hca_vport_context {int field_select; int sm_virt_aware; int has_smi; int has_raw; int policy; int phys_state; int vport_state; int cap_mask1; int cap_mask1_perm; int cap_mask2; int cap_mask2_perm; int lid; int init_type_reply; int lmc; int subnet_timeout; int sm_lid; int sm_sl; int qkey_violation_counter; int pkey_violation_counter; int /*<<< orphan*/  node_guid; int /*<<< orphan*/  port_guid; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_MODIFY_HCA_VPORT_CONTEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int cap_mask1 ; 
 int cap_mask1_field_select ; 
 int cap_mask2 ; 
 int cap_mask2_field_select ; 
 int field_select ; 
 int has_raw ; 
 int has_smi ; 
 int /*<<< orphan*/  hca_vport_context ; 
 int init_type_reply ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int lid ; 
 int lmc ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx5_core_dev*,void*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  modify_hca_vport_context_in ; 
 int /*<<< orphan*/  modify_hca_vport_context_out ; 
 int /*<<< orphan*/  node_guid ; 
 int /*<<< orphan*/  num_ports ; 
 int opcode ; 
 int pkey_violation_counter ; 
 int /*<<< orphan*/  port_guid ; 
 int port_physical_state ; 
 int qkey_violation_counter ; 
 int sm_lid ; 
 int sm_sl ; 
 int sm_virt_aware ; 
 int subnet_timeout ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int vport_number ; 
 int vport_state ; 
 int vport_state_policy ; 

int FUNC10(struct mlx5_core_dev *dev,
				       u8 other_vport, u8 port_num,
				       int vf,
				       struct mlx5_hca_vport_context *req)
{
	int in_sz = FUNC4(modify_hca_vport_context_in);
	u8 out[FUNC4(modify_hca_vport_context_out)];
	int is_group_manager;
	void *in;
	int err;
	void *ctx;

	FUNC9(dev, "vf %d\n", vf);
	is_group_manager = FUNC1(dev, vport_group_manager);
	in = FUNC6(in_sz, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC7(out, 0, sizeof(out));
	FUNC2(modify_hca_vport_context_in, in, opcode, MLX5_CMD_OP_MODIFY_HCA_VPORT_CONTEXT);
	if (other_vport) {
		if (is_group_manager) {
			FUNC2(modify_hca_vport_context_in, in, other_vport, 1);
			FUNC2(modify_hca_vport_context_in, in, vport_number, vf);
		} else {
			err = -EPERM;
			goto ex;
		}
	}

	if (FUNC1(dev, num_ports) > 1)
		FUNC2(modify_hca_vport_context_in, in, port_num, port_num);

	ctx = FUNC0(modify_hca_vport_context_in, in, hca_vport_context);
	FUNC2(hca_vport_context, ctx, field_select, req->field_select);
	FUNC2(hca_vport_context, ctx, sm_virt_aware, req->sm_virt_aware);
	FUNC2(hca_vport_context, ctx, has_smi, req->has_smi);
	FUNC2(hca_vport_context, ctx, has_raw, req->has_raw);
	FUNC2(hca_vport_context, ctx, vport_state_policy, req->policy);
	FUNC2(hca_vport_context, ctx, port_physical_state, req->phys_state);
	FUNC2(hca_vport_context, ctx, vport_state, req->vport_state);
	FUNC3(hca_vport_context, ctx, port_guid, req->port_guid);
	FUNC3(hca_vport_context, ctx, node_guid, req->node_guid);
	FUNC2(hca_vport_context, ctx, cap_mask1, req->cap_mask1);
	FUNC2(hca_vport_context, ctx, cap_mask1_field_select, req->cap_mask1_perm);
	FUNC2(hca_vport_context, ctx, cap_mask2, req->cap_mask2);
	FUNC2(hca_vport_context, ctx, cap_mask2_field_select, req->cap_mask2_perm);
	FUNC2(hca_vport_context, ctx, lid, req->lid);
	FUNC2(hca_vport_context, ctx, init_type_reply, req->init_type_reply);
	FUNC2(hca_vport_context, ctx, lmc, req->lmc);
	FUNC2(hca_vport_context, ctx, subnet_timeout, req->subnet_timeout);
	FUNC2(hca_vport_context, ctx, sm_lid, req->sm_lid);
	FUNC2(hca_vport_context, ctx, sm_sl, req->sm_sl);
	FUNC2(hca_vport_context, ctx, qkey_violation_counter, req->qkey_violation_counter);
	FUNC2(hca_vport_context, ctx, pkey_violation_counter, req->pkey_violation_counter);
	err = FUNC8(dev, in, in_sz, out, sizeof(out));
ex:
	FUNC5(in);
	return err;
}