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
struct mlx4_vhcr {int op_modifier; int in_modifier; int /*<<< orphan*/  out_param; int /*<<< orphan*/  in_param; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  RES_COUNTER 136 
#define  RES_CQ 135 
#define  RES_MAC 134 
#define  RES_MPT 133 
#define  RES_MTT 132 
#define  RES_QP 131 
#define  RES_SRQ 130 
#define  RES_VLAN 129 
#define  RES_XRCD 128 
 int FUNC0 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct mlx4_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx4_dev *dev, int slave,
			  struct mlx4_vhcr *vhcr,
			  struct mlx4_cmd_mailbox *inbox,
			  struct mlx4_cmd_mailbox *outbox,
			  struct mlx4_cmd_info *cmd)
{
	int err = -EINVAL;
	int alop = vhcr->op_modifier;

	switch (vhcr->in_modifier & 0xFF) {
	case RES_QP:
		err = FUNC5(dev, slave, vhcr->op_modifier, alop,
				  vhcr->in_param);
		break;

	case RES_MTT:
		err = FUNC4(dev, slave, vhcr->op_modifier, alop,
				   vhcr->in_param, &vhcr->out_param);
		break;

	case RES_MPT:
		err = FUNC3(dev, slave, vhcr->op_modifier, alop,
				   vhcr->in_param);
		break;

	case RES_CQ:
		err = FUNC1(dev, slave, vhcr->op_modifier, alop,
				  vhcr->in_param, &vhcr->out_param);
		break;

	case RES_SRQ:
		err = FUNC6(dev, slave, vhcr->op_modifier, alop,
				   vhcr->in_param, &vhcr->out_param);
		break;

	case RES_MAC:
		err = FUNC2(dev, slave, vhcr->op_modifier, alop,
				   vhcr->in_param, &vhcr->out_param,
				   (vhcr->in_modifier >> 8) & 0xFF);
		break;

	case RES_VLAN:
		err = FUNC7(dev, slave, vhcr->op_modifier, alop,
				    vhcr->in_param, &vhcr->out_param,
				    (vhcr->in_modifier >> 8) & 0xFF);
		break;

	case RES_COUNTER:
		err = FUNC0(dev, slave, vhcr->op_modifier, alop,
				       vhcr->in_param, &vhcr->out_param);
		break;

	case RES_XRCD:
		err = FUNC8(dev, slave, vhcr->op_modifier, alop,
				     vhcr->in_param, &vhcr->out_param);

	default:
		break;
	}
	return err;
}