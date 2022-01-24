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
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {struct mlx5i_priv* ppriv; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,union ib_gid*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, struct ib_device *hca,
			      union ib_gid *gid, u16 lid)
{
	struct mlx5e_priv    *epriv = FUNC2(netdev);
	struct mlx5_core_dev *mdev  = epriv->mdev;
	struct mlx5i_priv    *ipriv = epriv->ppriv;
	int err;

	FUNC0(mdev, "detaching QPN 0x%x, MGID %pI6\n", ipriv->qp.qpn, gid->raw);

	err = FUNC1(mdev, gid, ipriv->qp.qpn);
	if (err)
		FUNC0(mdev, "failed detaching QPN 0x%x, MGID %pI6\n",
			      ipriv->qp.qpn, gid->raw);

	return err;
}