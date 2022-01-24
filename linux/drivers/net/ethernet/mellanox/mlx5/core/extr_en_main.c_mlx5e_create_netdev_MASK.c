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
struct net_device {int dummy; } ;
struct mlx5e_profile {int max_tc; int rq_groups; int (* init ) (struct mlx5_core_dev*,struct net_device*,struct mlx5e_profile const*,void*) ;} ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC3 (struct mlx5_core_dev*,struct net_device*,struct mlx5e_profile const*,void*) ; 

struct net_device *FUNC4(struct mlx5_core_dev *mdev,
				       const struct mlx5e_profile *profile,
				       int nch,
				       void *ppriv)
{
	struct net_device *netdev;
	int err;

	netdev = FUNC0(sizeof(struct mlx5e_priv),
				    nch * profile->max_tc,
				    nch * profile->rq_groups);
	if (!netdev) {
		FUNC2(mdev, "alloc_etherdev_mqs() failed\n");
		return NULL;
	}

	err = profile->init(mdev, netdev, profile, ppriv);
	if (err) {
		FUNC2(mdev, "failed to init mlx5e profile %d\n", err);
		goto err_free_netdev;
	}

	return netdev;

err_free_netdev:
	FUNC1(netdev);

	return NULL;
}