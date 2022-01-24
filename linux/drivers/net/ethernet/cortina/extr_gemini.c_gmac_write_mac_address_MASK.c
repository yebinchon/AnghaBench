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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct gemini_ethernet_port {scalar_t__ gmac_base; } ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ GMAC_STA_ADD0 ; 
 scalar_t__ GMAC_STA_ADD1 ; 
 scalar_t__ GMAC_STA_ADD2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct gemini_ethernet_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct gemini_ethernet_port *port = FUNC3(netdev);
	__le32 addr[3];

	FUNC2(addr, 0, sizeof(addr));
	FUNC1(addr, netdev->dev_addr, ETH_ALEN);

	FUNC4(FUNC0(addr[0]), port->gmac_base + GMAC_STA_ADD0);
	FUNC4(FUNC0(addr[1]), port->gmac_base + GMAC_STA_ADD1);
	FUNC4(FUNC0(addr[2]), port->gmac_base + GMAC_STA_ADD2);
}