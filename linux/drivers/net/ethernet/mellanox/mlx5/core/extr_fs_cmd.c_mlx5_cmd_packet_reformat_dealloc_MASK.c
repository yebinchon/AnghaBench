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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_pkt_reformat {int /*<<< orphan*/  id; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_OP_DEALLOC_PACKET_REFORMAT_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dealloc_packet_reformat_context_in ; 
 int /*<<< orphan*/  dealloc_packet_reformat_context_out ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  packet_reformat_id ; 

__attribute__((used)) static void FUNC4(struct mlx5_flow_root_namespace *ns,
					     struct mlx5_pkt_reformat *pkt_reformat)
{
	u32 in[FUNC1(dealloc_packet_reformat_context_in)];
	u32 out[FUNC1(dealloc_packet_reformat_context_out)];
	struct mlx5_core_dev *dev = ns->dev;

	FUNC2(in, 0, sizeof(in));
	FUNC0(dealloc_packet_reformat_context_in, in, opcode,
		 MLX5_CMD_OP_DEALLOC_PACKET_REFORMAT_CONTEXT);
	FUNC0(dealloc_packet_reformat_context_in, in, packet_reformat_id,
		 pkt_reformat->id);

	FUNC3(dev, in, sizeof(in), out, sizeof(out));
}