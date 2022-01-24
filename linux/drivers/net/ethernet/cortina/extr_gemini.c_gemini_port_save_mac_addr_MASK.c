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
struct gemini_ethernet_port {scalar_t__ gmac_base; void** mac_addr; } ;

/* Variables and functions */
 scalar_t__ GMAC_STA_ADD0 ; 
 scalar_t__ GMAC_STA_ADD1 ; 
 scalar_t__ GMAC_STA_ADD2 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct gemini_ethernet_port *port)
{
	port->mac_addr[0] =
		FUNC0(FUNC1(port->gmac_base + GMAC_STA_ADD0));
	port->mac_addr[1] =
		FUNC0(FUNC1(port->gmac_base + GMAC_STA_ADD1));
	port->mac_addr[2] =
		FUNC0(FUNC1(port->gmac_base + GMAC_STA_ADD2));
}