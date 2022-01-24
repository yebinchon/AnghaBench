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
typedef  int /*<<< orphan*/  u8 ;
struct mlx4_vport_state {int /*<<< orphan*/  mac; scalar_t__ spoofchk; } ;
struct TYPE_5__ {TYPE_1__* vf_admin; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {struct mlx4_vport_state* vport; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 
 int FUNC7 (struct mlx4_dev*,int,int) ; 

int FUNC8(struct mlx4_dev *dev, int port, int vf, u8 *mac)
{
	struct mlx4_priv *priv = FUNC6(dev);
	struct mlx4_vport_state *s_info;
	int slave;

	if (!FUNC4(dev))
		return -EPROTONOSUPPORT;

	if (FUNC0(mac))
		return -EINVAL;

	slave = FUNC2(dev, vf);
	if (slave < 0)
		return -EINVAL;

	port = FUNC7(dev, slave, port);
	s_info = &priv->mfunc.master.vf_admin[slave].vport[port];

	if (s_info->spoofchk && FUNC1(mac)) {
		FUNC3(dev, "MAC invalidation is not allowed when spoofchk is on\n");
		return -EPERM;
	}

	s_info->mac = FUNC5(mac);
	FUNC3(dev, "default mac on vf %d port %d to %llX will take effect only after vf restart\n",
		  vf, port, s_info->mac);
	return 0;
}