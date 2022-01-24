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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {int /*<<< orphan*/  config_lock; scalar_t__ gmac_base; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int CONFIG0_RX_CHKSUM ; 
 scalar_t__ GMAC_CONFIG0 ; 
 int NETIF_F_RXCSUM ; 
 struct gemini_ethernet_port* FUNC0 (struct net_device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
			     netdev_features_t features)
{
	struct gemini_ethernet_port *port = FUNC0(netdev);
	int enable = features & NETIF_F_RXCSUM;
	unsigned long flags;
	u32 reg;

	FUNC2(&port->config_lock, flags);

	reg = FUNC1(port->gmac_base + GMAC_CONFIG0);
	reg = enable ? reg | CONFIG0_RX_CHKSUM : reg & ~CONFIG0_RX_CHKSUM;
	FUNC4(reg, port->gmac_base + GMAC_CONFIG0);

	FUNC3(&port->config_lock, flags);
	return 0;
}