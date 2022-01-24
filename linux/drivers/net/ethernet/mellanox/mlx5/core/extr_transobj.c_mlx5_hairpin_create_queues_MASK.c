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
struct mlx5_hairpin_params {int dummy; } ;
struct mlx5_hairpin {int num_channels; int /*<<< orphan*/ * rqn; int /*<<< orphan*/  func_mdev; int /*<<< orphan*/ * sqn; int /*<<< orphan*/  peer_mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mlx5_hairpin_params*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mlx5_hairpin_params*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlx5_hairpin *hp,
				      struct mlx5_hairpin_params *params)
{
	int i, j, err;

	for (i = 0; i < hp->num_channels; i++) {
		err = FUNC2(hp->func_mdev, params, &hp->rqn[i]);
		if (err)
			goto out_err_rq;
	}

	for (i = 0; i < hp->num_channels; i++) {
		err = FUNC3(hp->peer_mdev, params, &hp->sqn[i]);
		if (err)
			goto out_err_sq;
	}

	return 0;

out_err_sq:
	for (j = 0; j < i; j++)
		FUNC1(hp->peer_mdev, hp->sqn[j]);
	i = hp->num_channels;
out_err_rq:
	for (j = 0; j < i; j++)
		FUNC0(hp->func_mdev, hp->rqn[j]);
	return err;
}