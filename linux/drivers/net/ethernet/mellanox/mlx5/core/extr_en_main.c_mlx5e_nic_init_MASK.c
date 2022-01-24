#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  mtu; } ;
struct mlx5e_rss_params {int dummy; } ;
struct mlx5e_profile {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  params; } ;
struct mlx5e_priv {int /*<<< orphan*/  max_nch; TYPE_1__ channels; int /*<<< orphan*/  xsk; struct mlx5e_rss_params rss_params; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,struct mlx5e_rss_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int FUNC5 (struct mlx5e_priv*) ; 
 int FUNC6 (struct net_device*,struct mlx5e_priv*,struct mlx5_core_dev*,struct mlx5e_profile const*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*) ; 
 int FUNC8 (struct mlx5e_priv*) ; 
 struct mlx5e_priv* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct mlx5_core_dev *mdev,
			  struct net_device *netdev,
			  const struct mlx5e_profile *profile,
			  void *ppriv)
{
	struct mlx5e_priv *priv = FUNC9(netdev);
	struct mlx5e_rss_params *rss = &priv->rss_params;
	int err;

	err = FUNC6(netdev, priv, mdev, profile, ppriv);
	if (err)
		return err;

	FUNC2(mdev, &priv->xsk, rss, &priv->channels.params,
			       priv->max_nch, netdev->mtu);

	FUNC7(priv);

	err = FUNC5(priv);
	if (err)
		FUNC0(mdev, "IPSec initialization failed, %d\n", err);
	err = FUNC8(priv);
	if (err)
		FUNC0(mdev, "TLS initialization failed, %d\n", err);
	FUNC1(netdev);
	FUNC3(priv);
	FUNC4(priv);

	return 0;
}