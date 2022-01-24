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
struct mlx4_vport_state {int link_state; } ;
struct TYPE_7__ {TYPE_2__* vf_admin; } ;
struct TYPE_8__ {TYPE_3__ master; } ;
struct TYPE_5__ {int /*<<< orphan*/ * do_sense_port; } ;
struct mlx4_priv {TYPE_4__ mfunc; TYPE_1__ sense; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_6__ {struct mlx4_vport_state* vport; } ;

/* Variables and functions */
 int EINVAL ; 
#define  IFLA_VF_LINK_STATE_AUTO 130 
#define  IFLA_VF_LINK_STATE_DISABLE 129 
#define  IFLA_VF_LINK_STATE_ENABLE 128 
 int /*<<< orphan*/  MLX4_PORT_CHANGE_SUBTYPE_ACTIVE ; 
 int /*<<< orphan*/  MLX4_PORT_CHANGE_SUBTYPE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_dev*,int) ; 
 scalar_t__ FUNC3 (struct mlx4_priv*,int,int) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,int,int,int) ; 

int FUNC7(struct mlx4_dev *dev, int port, int vf, int link_state)
{
	struct mlx4_priv *priv = FUNC4(dev);
	struct mlx4_vport_state *s_info;
	int slave;
	u8 link_stat_event;

	slave = FUNC2(dev, vf);
	if (slave < 0)
		return -EINVAL;

	port = FUNC5(dev, slave, port);
	switch (link_state) {
	case IFLA_VF_LINK_STATE_AUTO:
		/* get current link state */
		if (!priv->sense.do_sense_port[port])
			link_stat_event = MLX4_PORT_CHANGE_SUBTYPE_ACTIVE;
		else
			link_stat_event = MLX4_PORT_CHANGE_SUBTYPE_DOWN;
	    break;

	case IFLA_VF_LINK_STATE_ENABLE:
		link_stat_event = MLX4_PORT_CHANGE_SUBTYPE_ACTIVE;
	    break;

	case IFLA_VF_LINK_STATE_DISABLE:
		link_stat_event = MLX4_PORT_CHANGE_SUBTYPE_DOWN;
	    break;

	default:
		FUNC6(dev, "unknown value for link_state %02x on slave %d port %d\n",
			  link_state, slave, port);
		return -EINVAL;
	}
	s_info = &priv->mfunc.master.vf_admin[slave].vport[port];
	s_info->link_state = link_state;

	/* send event */
	FUNC1(dev, slave, port, link_stat_event);

	if (FUNC3(priv, slave, port))
		FUNC0(dev,
			 "updating vf %d port %d no link state HW enforcement\n",
			 vf, port);
	return 0;
}