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
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int MVNETA_FORCE_UNI ; 
 int /*<<< orphan*/  MVNETA_MAC_ADDR_HIGH ; 
 int /*<<< orphan*/  MVNETA_MAC_ADDR_LOW ; 
 int /*<<< orphan*/  MVNETA_PORT_CONFIG ; 
 int /*<<< orphan*/  MVNETA_TYPE_PRIO ; 
 int MVNETA_UNI_PROMISC_MODE ; 
 int FUNC0 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mvneta_port *pp,
					  int is_promisc)
{
	u32 port_cfg_reg, val;

	port_cfg_reg = FUNC0(pp, MVNETA_PORT_CONFIG);

	val = FUNC0(pp, MVNETA_TYPE_PRIO);

	/* Set / Clear UPM bit in port configuration register */
	if (is_promisc) {
		/* Accept all Unicast addresses */
		port_cfg_reg |= MVNETA_UNI_PROMISC_MODE;
		val |= MVNETA_FORCE_UNI;
		FUNC1(pp, MVNETA_MAC_ADDR_LOW, 0xffff);
		FUNC1(pp, MVNETA_MAC_ADDR_HIGH, 0xffffffff);
	} else {
		/* Reject all Unicast addresses */
		port_cfg_reg &= ~MVNETA_UNI_PROMISC_MODE;
		val &= ~MVNETA_FORCE_UNI;
	}

	FUNC1(pp, MVNETA_PORT_CONFIG, port_cfg_reg);
	FUNC1(pp, MVNETA_TYPE_PRIO, val);
}