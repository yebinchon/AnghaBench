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
struct net_device {int dummy; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  link_speed; } ;
struct mlx4_en_priv {TYPE_3__ port_state; TYPE_5__* mdev; int /*<<< orphan*/  port; } ;
struct TYPE_9__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; } ;
struct ethtool_link_ksettings {TYPE_4__ base; } ;
struct TYPE_10__ {TYPE_2__* dev; } ;
struct TYPE_6__ {int flags2; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL ; 
 int MLX4_EN_PORT_ANC ; 
 int MLX4_EN_PORT_ANE ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct ethtool_link_ksettings*) ; 
 int FUNC2 (struct net_device*,struct ethtool_link_ksettings*) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev,
			   struct ethtool_link_ksettings *link_ksettings)
{
	struct mlx4_en_priv *priv = FUNC4(dev);
	int ret = -EINVAL;

	if (FUNC3(priv->mdev, priv->port))
		return -ENOMEM;

	FUNC0(DRV, priv, "query port state.flags ANC(%x) ANE(%x)\n",
	       priv->port_state.flags & MLX4_EN_PORT_ANC,
	       priv->port_state.flags & MLX4_EN_PORT_ANE);

	if (priv->mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_ETH_PROT_CTRL)
		ret = FUNC2(dev, link_ksettings);
	if (ret) /* ETH PROT CRTL is not supported or PTYS CMD failed */
		FUNC1(dev, link_ksettings);

	if (FUNC5(dev)) {
		link_ksettings->base.speed = priv->port_state.link_speed;
		link_ksettings->base.duplex = DUPLEX_FULL;
	} else {
		link_ksettings->base.speed = SPEED_UNKNOWN;
		link_ksettings->base.duplex = DUPLEX_UNKNOWN;
	}
	return 0;
}