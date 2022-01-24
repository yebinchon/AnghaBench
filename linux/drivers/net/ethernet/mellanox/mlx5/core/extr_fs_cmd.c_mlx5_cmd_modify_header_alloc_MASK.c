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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_modify_hdr {int /*<<< orphan*/  id; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int FS_FT_ESW_INGRESS_ACL ; 
 int FS_FT_FDB ; 
 int FS_FT_NIC_RX ; 
 int FS_FT_NIC_TX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_ALLOC_MODIFY_HEADER_CONTEXT ; 
#define  MLX5_FLOW_NAMESPACE_BYPASS 132 
#define  MLX5_FLOW_NAMESPACE_EGRESS 131 
#define  MLX5_FLOW_NAMESPACE_ESW_INGRESS 130 
#define  MLX5_FLOW_NAMESPACE_FDB 129 
#define  MLX5_FLOW_NAMESPACE_KERNEL 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  actions ; 
 int /*<<< orphan*/  alloc_modify_header_context_in ; 
 int /*<<< orphan*/  alloc_modify_header_context_out ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_modify_header_actions ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  modify_header_id ; 
 int num_of_actions ; 
 int opcode ; 
 int /*<<< orphan*/  set_action_in_add_action_in_auto ; 

__attribute__((used)) static int FUNC16(struct mlx5_flow_root_namespace *ns,
					u8 namespace, u8 num_actions,
					void *modify_actions,
					struct mlx5_modify_hdr *modify_hdr)
{
	u32 out[FUNC8(alloc_modify_header_context_out)];
	int max_actions, actions_size, inlen, err;
	struct mlx5_core_dev *dev = ns->dev;
	void *actions_in;
	u8 table_type;
	u32 *in;

	switch (namespace) {
	case MLX5_FLOW_NAMESPACE_FDB:
		max_actions = FUNC1(dev, max_modify_header_actions);
		table_type = FS_FT_FDB;
		break;
	case MLX5_FLOW_NAMESPACE_KERNEL:
	case MLX5_FLOW_NAMESPACE_BYPASS:
		max_actions = FUNC3(dev, max_modify_header_actions);
		table_type = FS_FT_NIC_RX;
		break;
	case MLX5_FLOW_NAMESPACE_EGRESS:
		max_actions = FUNC4(dev, max_modify_header_actions);
		table_type = FS_FT_NIC_TX;
		break;
	case MLX5_FLOW_NAMESPACE_ESW_INGRESS:
		max_actions = FUNC2(dev, max_modify_header_actions);
		table_type = FS_FT_ESW_INGRESS_ACL;
		break;
	default:
		return -EOPNOTSUPP;
	}

	if (num_actions > max_actions) {
		FUNC15(dev, "too many modify header actions %d, max supported %d\n",
			       num_actions, max_actions);
		return -EOPNOTSUPP;
	}

	actions_size = FUNC9(set_action_in_add_action_in_auto) * num_actions;
	inlen = FUNC7(alloc_modify_header_context_in) + actions_size;

	in = FUNC11(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC6(alloc_modify_header_context_in, in, opcode,
		 MLX5_CMD_OP_ALLOC_MODIFY_HEADER_CONTEXT);
	FUNC6(alloc_modify_header_context_in, in, table_type, table_type);
	FUNC6(alloc_modify_header_context_in, in, num_of_actions, num_actions);

	actions_in = FUNC0(alloc_modify_header_context_in, in, actions);
	FUNC12(actions_in, modify_actions, actions_size);

	FUNC13(out, 0, sizeof(out));
	err = FUNC14(dev, in, inlen, out, sizeof(out));

	modify_hdr->id = FUNC5(alloc_modify_header_context_out, out, modify_header_id);
	FUNC10(in);
	return err;
}