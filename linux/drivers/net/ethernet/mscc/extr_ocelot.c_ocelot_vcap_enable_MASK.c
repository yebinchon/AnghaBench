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
struct ocelot_port {int /*<<< orphan*/  chip_port; } ;
struct ocelot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_PORT_VCAP_S2_CFG ; 
 int ANA_PORT_VCAP_S2_CFG_S2_ENA ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocelot*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ocelot *ocelot, struct ocelot_port *port)
{
	FUNC1(ocelot, ANA_PORT_VCAP_S2_CFG_S2_ENA |
			 FUNC0(0xa),
			 ANA_PORT_VCAP_S2_CFG, port->chip_port);
}