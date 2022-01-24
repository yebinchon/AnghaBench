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
typedef  int u16 ;
struct net_device {int base_addr; int if_port; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ duplex; int port; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_CMD ; 
 int FD_ENABLE ; 
#define  PORT_AUI 130 
#define  PORT_BNC 129 
#define  PORT_TP 128 
 scalar_t__ SPEED_10 ; 
 int StartCoax ; 
 scalar_t__ WN0_ADDR_CONF ; 
 scalar_t__ WN4_NETDIAG ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev,
		    const struct ethtool_link_ksettings *cmd)
{
	u16 tmp;
	int ioaddr = dev->base_addr;

	if (cmd->base.speed != SPEED_10)
		return -EINVAL;
	if ((cmd->base.duplex != DUPLEX_HALF) &&
	    (cmd->base.duplex != DUPLEX_FULL))
		return -EINVAL;

	/* change XCVR type */
	FUNC0(0);
	tmp = FUNC1(ioaddr + WN0_ADDR_CONF);
	switch (cmd->base.port) {
	case PORT_TP:
		tmp &= ~(3<<14);
		dev->if_port = 0;
		break;
	case PORT_AUI:
		tmp |= (1<<14);
		dev->if_port = 1;
		break;
	case PORT_BNC:
		tmp |= (3<<14);
		dev->if_port = 3;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(tmp, ioaddr + WN0_ADDR_CONF);
	if (dev->if_port == 3) {
		/* fire up the DC-DC convertor if BNC gets enabled */
		tmp = FUNC1(ioaddr + WN0_ADDR_CONF);
		if (tmp & (3 << 14)) {
			FUNC2(StartCoax, ioaddr + EL3_CMD);
			FUNC3(800);
		} else
			return -EIO;
	}

	FUNC0(4);
	tmp = FUNC1(ioaddr + WN4_NETDIAG);
	if (cmd->base.duplex == DUPLEX_FULL)
		tmp |= FD_ENABLE;
	else
		tmp &= ~FD_ENABLE;
	FUNC2(tmp, ioaddr + WN4_NETDIAG);
	FUNC0(1);

	return 0;
}