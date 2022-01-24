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
typedef  int /*<<< orphan*/  u8 ;
struct mlx4_vport_state {int spoofchk; int /*<<< orphan*/  mac; } ;
struct TYPE_7__ {TYPE_2__* vf_admin; } ;
struct TYPE_8__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_4__ mfunc; } ;
struct TYPE_5__ {int flags2; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_6__ {struct mlx4_vport_state* vport; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int EPROTONOSUPPORT ; 
 int ETH_ALEN ; 
 int MLX4_DEV_CAP_FLAG2_FSM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx4_dev *dev, int port, int vf, bool setting)
{
	struct mlx4_priv *priv = FUNC4(dev);
	struct mlx4_vport_state *s_info;
	int slave;
	u8 mac[ETH_ALEN];

	if ((!FUNC3(dev)) ||
	    !(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_FSM))
		return -EPROTONOSUPPORT;

	slave = FUNC1(dev, vf);
	if (slave < 0)
		return -EINVAL;

	port = FUNC5(dev, slave, port);
	s_info = &priv->mfunc.master.vf_admin[slave].vport[port];

	FUNC6(mac, s_info->mac);
	if (setting && !FUNC0(mac)) {
		FUNC2(dev, "Illegal MAC with spoofchk\n");
		return -EPERM;
	}

	s_info->spoofchk = setting;

	return 0;
}