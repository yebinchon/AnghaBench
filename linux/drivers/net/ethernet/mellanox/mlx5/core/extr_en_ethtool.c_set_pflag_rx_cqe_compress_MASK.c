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
struct net_device {int dummy; } ;
struct TYPE_5__ {int rx_cqe_compress_def; } ;
struct TYPE_6__ {TYPE_2__ params; } ;
struct TYPE_4__ {scalar_t__ rx_filter; } ;
struct mlx5e_priv {TYPE_3__ channels; TYPE_1__ tstamp; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ HWTSTAMP_FILTER_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqe_compression ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				     bool enable)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;

	if (!FUNC0(mdev, cqe_compression))
		return -EOPNOTSUPP;

	if (enable && priv->tstamp.rx_filter != HWTSTAMP_FILTER_NONE) {
		FUNC2(netdev, "Can't enable cqe compression while timestamping is enabled.\n");
		return -EINVAL;
	}

	FUNC1(priv, enable);
	priv->channels.params.rx_cqe_compress_def = enable;

	return 0;
}