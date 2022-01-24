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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct gemini_ethernet_port {int /*<<< orphan*/  config_lock; scalar_t__ gmac_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG0_TX_RX_DISABLE ; 
 scalar_t__ GMAC_CONFIG0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gemini_ethernet_port* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC1(netdev);
	unsigned long flags;
	u32 val;

	FUNC3(&port->config_lock, flags);

	val = FUNC2(port->gmac_base + GMAC_CONFIG0);
	val |= CONFIG0_TX_RX_DISABLE;
	FUNC5(val, port->gmac_base + GMAC_CONFIG0);

	FUNC4(&port->config_lock, flags);

	FUNC0(10);	/* let GMAC consume packet */
}