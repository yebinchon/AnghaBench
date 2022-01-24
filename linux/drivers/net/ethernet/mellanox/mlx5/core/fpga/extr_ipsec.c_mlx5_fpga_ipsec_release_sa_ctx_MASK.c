#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cmd; } ;
struct TYPE_6__ {TYPE_1__ ipsec_sa_v1; } ;
struct mlx5_fpga_ipsec_sa_ctx {int /*<<< orphan*/  hash; TYPE_3__ hw_sa; TYPE_2__* dev; } ;
struct mlx5_fpga_ipsec {int /*<<< orphan*/  sa_hash_lock; int /*<<< orphan*/  sa_hash; } ;
struct mlx5_fpga_device {struct mlx5_fpga_ipsec* ipsec; } ;
struct TYPE_5__ {struct mlx5_fpga_device* fpga; } ;

/* Variables and functions */
 int MLX5_FPGA_IPSEC_CMD_OP_DEL_SA ; 
 int MLX5_FPGA_IPSEC_CMD_OP_DEL_SA_V2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_fpga_ipsec*) ; 
 int FUNC2 (struct mlx5_fpga_device*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rhash_sa ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct mlx5_fpga_ipsec_sa_ctx *sa_ctx)
{
	struct mlx5_fpga_device *fdev = sa_ctx->dev->fpga;
	struct mlx5_fpga_ipsec *fipsec = fdev->ipsec;
	int opcode = FUNC1(fdev->ipsec) ?
			MLX5_FPGA_IPSEC_CMD_OP_DEL_SA_V2 :
			MLX5_FPGA_IPSEC_CMD_OP_DEL_SA;
	int err;

	err = FUNC2(fdev, &sa_ctx->hw_sa, opcode);
	sa_ctx->hw_sa.ipsec_sa_v1.cmd = 0;
	if (err) {
		FUNC0(err);
		return;
	}

	FUNC3(&fipsec->sa_hash_lock);
	FUNC0(FUNC5(&fipsec->sa_hash, &sa_ctx->hash,
				       rhash_sa));
	FUNC4(&fipsec->sa_hash_lock);
}