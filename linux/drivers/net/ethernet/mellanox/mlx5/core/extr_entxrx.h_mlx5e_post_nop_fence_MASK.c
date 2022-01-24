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
typedef  int u32 ;
typedef  int u16 ;
struct mlx5_wqe_ctrl_seg {int /*<<< orphan*/  fm_ce_se; void* qpn_ds; void* opmod_idx_opcode; } ;
struct mlx5e_tx_wqe {struct mlx5_wqe_ctrl_seg ctrl; } ;
struct mlx5_wq_cyc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FENCE_MODE_INITIATOR_SMALL ; 
 int MLX5_OPCODE_NOP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_wqe_ctrl_seg*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlx5_wq_cyc*,int) ; 
 struct mlx5e_tx_wqe* FUNC3 (struct mlx5_wq_cyc*,int) ; 

__attribute__((used)) static inline struct mlx5e_tx_wqe *
FUNC4(struct mlx5_wq_cyc *wq, u32 sqn, u16 *pc)
{
	u16                         pi   = FUNC2(wq, *pc);
	struct mlx5e_tx_wqe        *wqe  = FUNC3(wq, pi);
	struct mlx5_wqe_ctrl_seg   *cseg = &wqe->ctrl;

	FUNC1(cseg, 0, sizeof(*cseg));

	cseg->opmod_idx_opcode = FUNC0((*pc << 8) | MLX5_OPCODE_NOP);
	cseg->qpn_ds           = FUNC0((sqn << 8) | 0x01);
	cseg->fm_ce_se         = MLX5_FENCE_MODE_INITIATOR_SMALL;

	(*pc)++;

	return wqe;
}