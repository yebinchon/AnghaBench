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
typedef  int u16 ;
struct r8152 {int ocp_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_OCP_GPHY_BASE ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC3(struct r8152 *tp)
{
	u16 nway_state;

	FUNC2(tp, MCU_TYPE_PLA, PLA_OCP_GPHY_BASE, 0x2000);
	tp->ocp_base = 0x2000;
	FUNC1(tp, MCU_TYPE_PLA, 0xb014, 0x4c);		/* phy state */
	nway_state = FUNC0(tp, MCU_TYPE_PLA, 0xb01a);

	/* bit 15: TXDIS_STATE, bit 14: ABD_STATE */
	if (nway_state & 0xc000)
		return false;
	else
		return true;
}