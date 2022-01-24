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
struct net_device {int dummy; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;

/* Variables and functions */
 scalar_t__ GMAC_IN_BCAST ; 
 scalar_t__ GMAC_IN_DISCARDS ; 
 scalar_t__ GMAC_IN_ERRORS ; 
 scalar_t__ GMAC_IN_MAC1 ; 
 scalar_t__ GMAC_IN_MAC2 ; 
 scalar_t__ GMAC_IN_MCAST ; 
 struct gemini_ethernet_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC0(netdev);

	FUNC1(port->gmac_base + GMAC_IN_DISCARDS);
	FUNC1(port->gmac_base + GMAC_IN_ERRORS);
	FUNC1(port->gmac_base + GMAC_IN_MCAST);
	FUNC1(port->gmac_base + GMAC_IN_BCAST);
	FUNC1(port->gmac_base + GMAC_IN_MAC1);
	FUNC1(port->gmac_base + GMAC_IN_MAC2);
}