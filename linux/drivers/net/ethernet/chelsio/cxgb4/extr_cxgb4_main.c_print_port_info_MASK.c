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
struct TYPE_4__ {int pcaps; } ;
struct port_info {int /*<<< orphan*/  port_type; TYPE_1__ link_cfg; struct adapter* adapter; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_2__ vpd; } ;
struct adapter {int /*<<< orphan*/  name; TYPE_3__ params; } ;

/* Variables and functions */
 int FW_PORT_CAP32_SPEED_100G ; 
 int FW_PORT_CAP32_SPEED_100M ; 
 int FW_PORT_CAP32_SPEED_10G ; 
 int FW_PORT_CAP32_SPEED_1G ; 
 int FW_PORT_CAP32_SPEED_200G ; 
 int FW_PORT_CAP32_SPEED_25G ; 
 int FW_PORT_CAP32_SPEED_400G ; 
 int FW_PORT_CAP32_SPEED_40G ; 
 int FW_PORT_CAP32_SPEED_50G ; 
 int /*<<< orphan*/  FUNC0 (struct net_device const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct port_info* FUNC1 (struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct net_device *dev)
{
	char buf[80];
	char *bufp = buf;
	const struct port_info *pi = FUNC1(dev);
	const struct adapter *adap = pi->adapter;

	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_100M)
		bufp += FUNC2(bufp, "100M/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_1G)
		bufp += FUNC2(bufp, "1G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_10G)
		bufp += FUNC2(bufp, "10G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_25G)
		bufp += FUNC2(bufp, "25G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_40G)
		bufp += FUNC2(bufp, "40G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_50G)
		bufp += FUNC2(bufp, "50G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_100G)
		bufp += FUNC2(bufp, "100G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_200G)
		bufp += FUNC2(bufp, "200G/");
	if (pi->link_cfg.pcaps & FW_PORT_CAP32_SPEED_400G)
		bufp += FUNC2(bufp, "400G/");
	if (bufp != buf)
		--bufp;
	FUNC2(bufp, "BASE-%s", FUNC3(pi->port_type));

	FUNC0(dev, "%s: Chelsio %s (%s) %s\n",
		    dev->name, adap->params.vpd.id, adap->name, buf);
}