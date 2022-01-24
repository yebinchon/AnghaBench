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
struct netlink_ext_ack {int dummy; } ;
struct TYPE_7__ {scalar_t__ inline_mode; } ;
struct mlx5_eswitch {scalar_t__ mode; TYPE_3__ offloads; TYPE_4__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_vfs; } ;
struct TYPE_6__ {TYPE_1__ sriov; } ;
struct TYPE_8__ {TYPE_2__ priv; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 scalar_t__ MLX5_ESWITCH_OFFLOADS ; 
 scalar_t__ MLX5_INLINE_MODE_L2 ; 
 scalar_t__ MLX5_INLINE_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*) ; 
 int FUNC3 (struct mlx5_eswitch*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct mlx5_eswitch*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlx5_eswitch *esw,
			      struct netlink_ext_ack *extack)
{
	int err, err1;

	if (esw->mode != MLX5_ESWITCH_LEGACY &&
	    !FUNC1(esw->dev)) {
		FUNC0(extack,
				   "Can't set offloads mode, SRIOV legacy not enabled");
		return -EINVAL;
	}

	FUNC2(esw);
	FUNC5(esw, esw->dev->priv.sriov.num_vfs);
	err = FUNC3(esw, MLX5_ESWITCH_OFFLOADS);
	if (err) {
		FUNC0(extack,
				   "Failed setting eswitch to offloads");
		err1 = FUNC3(esw, MLX5_ESWITCH_LEGACY);
		if (err1) {
			FUNC0(extack,
					   "Failed setting eswitch back to legacy");
		}
	}
	if (esw->offloads.inline_mode == MLX5_INLINE_MODE_NONE) {
		if (FUNC4(esw,
						 &esw->offloads.inline_mode)) {
			esw->offloads.inline_mode = MLX5_INLINE_MODE_L2;
			FUNC0(extack,
					   "Inline mode is different between vports");
		}
	}
	return err;
}