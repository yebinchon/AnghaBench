#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int /*<<< orphan*/  (* get_media_type ) (struct hnae3_handle*,int*,int*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  duplex; int /*<<< orphan*/  speed; int /*<<< orphan*/  mdio_support; void* port; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_3__ {struct hnae3_ae_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_MDIO_SUPPORTS_C22 ; 
#define  HNAE3_MEDIA_TYPE_BACKPLANE 131 
#define  HNAE3_MEDIA_TYPE_COPPER 130 
#define  HNAE3_MEDIA_TYPE_FIBER 129 
#define  HNAE3_MEDIA_TYPE_NONE 128 
 int HNAE3_MODULE_TYPE_CR ; 
 void* PORT_DA ; 
 void* PORT_FIBRE ; 
 void* PORT_NONE ; 
 void* PORT_TP ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_handle*,struct ethtool_link_ksettings*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae3_handle*,int*,int*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev,
				   struct ethtool_link_ksettings *cmd)
{
	struct hnae3_handle *h = FUNC0(netdev);
	const struct hnae3_ae_ops *ops;
	u8 module_type;
	u8 media_type;
	u8 link_stat;

	ops = h->ae_algo->ops;
	if (ops->get_media_type)
		ops->get_media_type(h, &media_type, &module_type);
	else
		return -EOPNOTSUPP;

	switch (media_type) {
	case HNAE3_MEDIA_TYPE_NONE:
		cmd->base.port = PORT_NONE;
		FUNC1(h, cmd);
		break;
	case HNAE3_MEDIA_TYPE_FIBER:
		if (module_type == HNAE3_MODULE_TYPE_CR)
			cmd->base.port = PORT_DA;
		else
			cmd->base.port = PORT_FIBRE;

		FUNC1(h, cmd);
		break;
	case HNAE3_MEDIA_TYPE_BACKPLANE:
		cmd->base.port = PORT_NONE;
		FUNC1(h, cmd);
		break;
	case HNAE3_MEDIA_TYPE_COPPER:
		cmd->base.port = PORT_TP;
		if (!netdev->phydev)
			FUNC1(h, cmd);
		else
			FUNC4(netdev->phydev, cmd);
		break;
	default:

		FUNC3(netdev, "Unknown media type");
		return 0;
	}

	/* mdio_support */
	cmd->base.mdio_support = ETH_MDIO_SUPPORTS_C22;

	link_stat = FUNC2(netdev);
	if (!link_stat) {
		cmd->base.speed = SPEED_UNKNOWN;
		cmd->base.duplex = DUPLEX_UNKNOWN;
	}

	return 0;
}