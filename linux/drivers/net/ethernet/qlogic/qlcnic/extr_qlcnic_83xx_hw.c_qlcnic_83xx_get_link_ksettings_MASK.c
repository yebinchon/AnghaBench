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
typedef  int u32 ;
struct qlcnic_hardware_context {int link_speed; int port_config; int supported_type; int /*<<< orphan*/  physical_port; int /*<<< orphan*/  link_autoneg; int /*<<< orphan*/  link_duplex; scalar_t__ has_link_events; int /*<<< orphan*/  board_type; int /*<<< orphan*/  module_type; } ;
struct qlcnic_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct TYPE_3__ {int speed; int port; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  duplex; } ;
struct ethtool_link_ksettings {TYPE_2__ link_modes; TYPE_1__ base; } ;

/* Variables and functions */
 int ADVERTISED_Autoneg ; 
 int ADVERTISED_FIBRE ; 
 int ADVERTISED_TP ; 
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int /*<<< orphan*/  DUPLEX_UNKNOWN ; 
#define  PORT_DA 134 
#define  PORT_FIBRE 133 
 int PORT_OTHER ; 
#define  PORT_TP 132 
 int /*<<< orphan*/  QLCNIC_BRDTYPE_83XX_10G ; 
 int QLC_83XX_100_CAPABLE ; 
 int QLC_83XX_10G_CAPABLE ; 
 int QLC_83XX_10_CAPABLE ; 
 int QLC_83XX_1G_CAPABLE ; 
 int QLC_83XX_AUTONEG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  SPEED_10 131 
#define  SPEED_100 130 
#define  SPEED_1000 129 
#define  SPEED_10000 128 
 int SPEED_UNKNOWN ; 
 int SUPPORTED_10000baseT_Full ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_100baseT_Full ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_Autoneg ; 
 int SUPPORTED_FIBRE ; 
 int SUPPORTED_TP ; 
 int /*<<< orphan*/  __QLCNIC_MAINTENANCE_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct qlcnic_adapter *adapter,
				   struct ethtool_link_ksettings *ecmd)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	u32 config = 0;
	int status = 0;
	u32 supported, advertising;

	if (!FUNC6(__QLCNIC_MAINTENANCE_MODE, &adapter->state)) {
		/* Get port configuration info */
		status = FUNC4(adapter);
		/* Get Link Status related info */
		config = FUNC5(adapter);
		ahw->module_type = FUNC0(config);
	}

	/* hard code until there is a way to get it from flash */
	ahw->board_type = QLCNIC_BRDTYPE_83XX_10G;

	if (FUNC3(adapter->netdev) && ahw->has_link_events) {
		ecmd->base.speed = ahw->link_speed;
		ecmd->base.duplex = ahw->link_duplex;
		ecmd->base.autoneg = ahw->link_autoneg;
	} else {
		ecmd->base.speed = SPEED_UNKNOWN;
		ecmd->base.duplex = DUPLEX_UNKNOWN;
		ecmd->base.autoneg = AUTONEG_DISABLE;
	}

	supported = (SUPPORTED_10baseT_Full |
			   SUPPORTED_100baseT_Full |
			   SUPPORTED_1000baseT_Full |
			   SUPPORTED_10000baseT_Full |
			   SUPPORTED_Autoneg);

	FUNC2(&advertising,
						ecmd->link_modes.advertising);

	if (ecmd->base.autoneg == AUTONEG_ENABLE) {
		if (ahw->port_config & QLC_83XX_10_CAPABLE)
			advertising |= SUPPORTED_10baseT_Full;
		if (ahw->port_config & QLC_83XX_100_CAPABLE)
			advertising |= SUPPORTED_100baseT_Full;
		if (ahw->port_config & QLC_83XX_1G_CAPABLE)
			advertising |= SUPPORTED_1000baseT_Full;
		if (ahw->port_config & QLC_83XX_10G_CAPABLE)
			advertising |= SUPPORTED_10000baseT_Full;
		if (ahw->port_config & QLC_83XX_AUTONEG_ENABLE)
			advertising |= ADVERTISED_Autoneg;
	} else {
		switch (ahw->link_speed) {
		case SPEED_10:
			advertising = SUPPORTED_10baseT_Full;
			break;
		case SPEED_100:
			advertising = SUPPORTED_100baseT_Full;
			break;
		case SPEED_1000:
			advertising = SUPPORTED_1000baseT_Full;
			break;
		case SPEED_10000:
			advertising = SUPPORTED_10000baseT_Full;
			break;
		default:
			break;
		}

	}

	switch (ahw->supported_type) {
	case PORT_FIBRE:
		supported |= SUPPORTED_FIBRE;
		advertising |= ADVERTISED_FIBRE;
		ecmd->base.port = PORT_FIBRE;
		break;
	case PORT_TP:
		supported |= SUPPORTED_TP;
		advertising |= ADVERTISED_TP;
		ecmd->base.port = PORT_TP;
		break;
	case PORT_DA:
		supported |= SUPPORTED_FIBRE;
		advertising |= ADVERTISED_FIBRE;
		ecmd->base.port = PORT_DA;
		break;
	default:
		supported |= SUPPORTED_FIBRE;
		advertising |= ADVERTISED_FIBRE;
		ecmd->base.port = PORT_OTHER;
		break;
	}
	ecmd->base.phy_address = ahw->physical_port;

	FUNC1(ecmd->link_modes.supported,
						supported);
	FUNC1(ecmd->link_modes.advertising,
						advertising);

	return status;
}