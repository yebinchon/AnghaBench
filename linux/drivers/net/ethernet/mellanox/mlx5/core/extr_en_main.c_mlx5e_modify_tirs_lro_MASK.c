#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  params; } ;
struct mlx5e_priv {int max_nch; TYPE_3__* direct_tir; TYPE_2__* indir_tir; TYPE_1__ channels; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lro; } ;
struct TYPE_7__ {int /*<<< orphan*/  tirn; } ;
struct TYPE_6__ {int /*<<< orphan*/  tirn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5E_NUM_INDIR_TIRS ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ bitmask ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  modify_tir_in ; 

__attribute__((used)) static int FUNC7(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;

	void *in;
	void *tirc;
	int inlen;
	int err;
	int tt;
	int ix;

	inlen = FUNC2(modify_tir_in);
	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_tir_in, in, bitmask.lro, 1);
	tirc = FUNC0(modify_tir_in, in, ctx);

	FUNC6(&priv->channels.params, tirc);

	for (tt = 0; tt < MLX5E_NUM_INDIR_TIRS; tt++) {
		err = FUNC5(mdev, priv->indir_tir[tt].tirn, in,
					   inlen);
		if (err)
			goto free_in;
	}

	for (ix = 0; ix < priv->max_nch; ix++) {
		err = FUNC5(mdev, priv->direct_tir[ix].tirn,
					   in, inlen);
		if (err)
			goto free_in;
	}

free_in:
	FUNC3(in);

	return err;
}