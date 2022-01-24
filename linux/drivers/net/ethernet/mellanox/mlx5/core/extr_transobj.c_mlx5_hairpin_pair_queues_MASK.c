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
struct mlx5_hairpin {int num_channels; int /*<<< orphan*/ * sqn; int /*<<< orphan*/  peer_mdev; int /*<<< orphan*/ * rqn; int /*<<< orphan*/  func_mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RST ; 
 int /*<<< orphan*/  MLX5_SQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_SQC_STATE_RST ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhca_id ; 

__attribute__((used)) static int FUNC3(struct mlx5_hairpin *hp)
{
	int i, j, err;

	/* set peer SQs */
	for (i = 0; i < hp->num_channels; i++) {
		err = FUNC2(hp->peer_mdev, hp->sqn[i],
					     MLX5_SQC_STATE_RST, MLX5_SQC_STATE_RDY,
					     FUNC0(hp->func_mdev, vhca_id), hp->rqn[i]);
		if (err)
			goto err_modify_sq;
	}

	/* set func RQs */
	for (i = 0; i < hp->num_channels; i++) {
		err = FUNC1(hp->func_mdev, hp->rqn[i],
					     MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY,
					     FUNC0(hp->peer_mdev, vhca_id), hp->sqn[i]);
		if (err)
			goto err_modify_rq;
	}

	return 0;

err_modify_rq:
	for (j = 0; j < i; j++)
		FUNC1(hp->func_mdev, hp->rqn[j], MLX5_RQC_STATE_RDY,
				       MLX5_RQC_STATE_RST, 0, 0);
	i = hp->num_channels;
err_modify_sq:
	for (j = 0; j < i; j++)
		FUNC2(hp->peer_mdev, hp->sqn[j], MLX5_SQC_STATE_RDY,
				       MLX5_SQC_STATE_RST, 0, 0);
	return err;
}