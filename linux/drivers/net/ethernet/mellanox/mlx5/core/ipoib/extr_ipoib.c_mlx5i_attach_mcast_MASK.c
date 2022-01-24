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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  qpn; } ;
struct mlx5i_priv {int /*<<< orphan*/  qkey; TYPE_1__ qp; } ;
struct mlx5e_priv {struct mlx5i_priv* ppriv; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*,union ib_gid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ib_device *hca,
			      union ib_gid *gid, u16 lid, int set_qkey,
			      u32 qkey)
{
	struct mlx5e_priv    *epriv = FUNC3(netdev);
	struct mlx5_core_dev *mdev  = epriv->mdev;
	struct mlx5i_priv    *ipriv = epriv->ppriv;
	int err;

	FUNC1(mdev, "attaching QPN 0x%x, MGID %pI6\n", ipriv->qp.qpn, gid->raw);
	err = FUNC0(mdev, gid, ipriv->qp.qpn);
	if (err)
		FUNC2(mdev, "failed attaching QPN 0x%x, MGID %pI6\n",
			       ipriv->qp.qpn, gid->raw);

	if (set_qkey) {
		FUNC1(mdev, "%s setting qkey 0x%x\n",
			      netdev->name, qkey);
		ipriv->qkey = qkey;
	}

	return err;
}