#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx4_ptys_reg {int flags; int /*<<< orphan*/  eth_proto_admin; int /*<<< orphan*/  eth_proto_cap; int /*<<< orphan*/  proto_mask; int /*<<< orphan*/  local_port; } ;
struct mlx4_en_priv {TYPE_4__* mdev; int /*<<< orphan*/  port; scalar_t__ port_up; } ;
struct TYPE_8__ {int speed; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct TYPE_6__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_3__ base; TYPE_1__ link_modes; } ;
typedef  int /*<<< orphan*/  ptys_reg ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_7__ {int flags2; } ;
struct TYPE_10__ {TYPE_2__ caps; } ;
struct TYPE_9__ {int /*<<< orphan*/  state_lock; TYPE_5__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED ; 
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DRV ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 int /*<<< orphan*/  MLX4_1000BASE_CX_SGMII ; 
 int /*<<< orphan*/  MLX4_1000BASE_KX ; 
 int /*<<< orphan*/  MLX4_ACCESS_REG_QUERY ; 
 int /*<<< orphan*/  MLX4_ACCESS_REG_WRITE ; 
 int MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MLX4_PTYS_AN_DISABLE_ADMIN ; 
 int MLX4_PTYS_AN_DISABLE_CAP ; 
 int /*<<< orphan*/  MLX4_PTYS_EN ; 
 int /*<<< orphan*/  __ETHTOOL_LINK_MODE_MASK_NBITS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int const,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_ptys_reg*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,struct mlx4_ptys_reg*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_en_priv*,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct net_device *dev,
			   const struct ethtool_link_ksettings *link_ksettings)
{
	struct mlx4_en_priv *priv = FUNC13(dev);
	struct mlx4_ptys_reg ptys_reg;
	__be32 proto_admin;
	u8 cur_autoneg;
	int ret;

	u32 ptys_adv = FUNC6(
		link_ksettings->link_modes.advertising, ADVERTISED);
	const int speed = link_ksettings->base.speed;

	FUNC3(DRV, priv,
	       "Set Speed=%d adv={%*pbl} autoneg=%d duplex=%d\n",
	       speed, __ETHTOOL_LINK_MODE_MASK_NBITS,
	       link_ksettings->link_modes.advertising,
	       link_ksettings->base.autoneg,
	       link_ksettings->base.duplex);

	if (!(priv->mdev->dev->caps.flags2 &
	      MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL) ||
	    (link_ksettings->base.duplex == DUPLEX_HALF))
		return -EINVAL;

	FUNC7(&ptys_reg, 0, sizeof(ptys_reg));
	ptys_reg.local_port = priv->port;
	ptys_reg.proto_mask = MLX4_PTYS_EN;
	ret = FUNC8(priv->mdev->dev,
				   MLX4_ACCESS_REG_QUERY, &ptys_reg);
	if (ret) {
		FUNC5(priv, "Failed to QUERY mlx4_ACCESS_PTYS_REG status(%x)\n",
			ret);
		return 0;
	}

	cur_autoneg = ptys_reg.flags & MLX4_PTYS_AN_DISABLE_ADMIN ?
				AUTONEG_DISABLE : AUTONEG_ENABLE;

	if (link_ksettings->base.autoneg == AUTONEG_DISABLE) {
		proto_admin = FUNC14(priv, speed,
						   ptys_reg.eth_proto_cap);
		if ((FUNC1(proto_admin) &
		     (FUNC0(MLX4_1000BASE_CX_SGMII) |
		      FUNC0(MLX4_1000BASE_KX))) &&
		    (ptys_reg.flags & MLX4_PTYS_AN_DISABLE_CAP))
			ptys_reg.flags |= MLX4_PTYS_AN_DISABLE_ADMIN;
	} else {
		proto_admin = FUNC2(ptys_adv);
		ptys_reg.flags &= ~MLX4_PTYS_AN_DISABLE_ADMIN;
	}

	proto_admin &= ptys_reg.eth_proto_cap;
	if (!proto_admin) {
		FUNC5(priv, "Not supported link mode(s) requested, check supported link modes.\n");
		return -EINVAL; /* nothing to change due to bad input */
	}

	if ((proto_admin == ptys_reg.eth_proto_admin) &&
	    ((ptys_reg.flags & MLX4_PTYS_AN_DISABLE_CAP) &&
	     (link_ksettings->base.autoneg == cur_autoneg)))
		return 0; /* Nothing to change */

	FUNC3(DRV, priv, "mlx4_ACCESS_PTYS_REG SET: ptys_reg.eth_proto_admin = 0x%x\n",
	       FUNC1(proto_admin));

	ptys_reg.eth_proto_admin = proto_admin;
	ret = FUNC8(priv->mdev->dev, MLX4_ACCESS_REG_WRITE,
				   &ptys_reg);
	if (ret) {
		FUNC5(priv, "Failed to write mlx4_ACCESS_PTYS_REG eth_proto_admin(0x%x) status(0x%x)",
			FUNC1(ptys_reg.eth_proto_admin), ret);
		return ret;
	}

	FUNC11(&priv->mdev->state_lock);
	if (priv->port_up) {
		FUNC5(priv, "Port link mode changed, restarting port...\n");
		FUNC10(dev, 1);
		if (FUNC9(dev))
			FUNC4(priv, "Failed restarting port %d\n", priv->port);
	}
	FUNC12(&priv->mdev->state_lock);
	return 0;
}