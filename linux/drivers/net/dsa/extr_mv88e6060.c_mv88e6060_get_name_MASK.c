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
struct mii_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_SWITCH_ID ; 
 int PORT_SWITCH_ID_6060 ; 
 int PORT_SWITCH_ID_6060_MASK ; 
 int PORT_SWITCH_ID_6060_R1 ; 
 int PORT_SWITCH_ID_6060_R2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mii_bus*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(struct mii_bus *bus, int sw_addr)
{
	int ret;

	ret = FUNC1(bus, sw_addr + FUNC0(0), PORT_SWITCH_ID);
	if (ret >= 0) {
		if (ret == PORT_SWITCH_ID_6060)
			return "Marvell 88E6060 (A0)";
		if (ret == PORT_SWITCH_ID_6060_R1 ||
		    ret == PORT_SWITCH_ID_6060_R2)
			return "Marvell 88E6060 (B0)";
		if ((ret & PORT_SWITCH_ID_6060_MASK) == PORT_SWITCH_ID_6060)
			return "Marvell 88E6060";
	}

	return NULL;
}