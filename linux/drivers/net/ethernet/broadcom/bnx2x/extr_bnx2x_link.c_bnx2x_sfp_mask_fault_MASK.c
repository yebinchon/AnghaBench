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
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp,
				 struct bnx2x_phy *phy,
				 u16 alarm_status_offset,
				 u16 alarm_ctrl_offset)
{
	u16 alarm_status, val;
	FUNC0(bp, phy,
			MDIO_PMA_DEVAD, alarm_status_offset,
			&alarm_status);
	FUNC0(bp, phy,
			MDIO_PMA_DEVAD, alarm_status_offset,
			&alarm_status);
	/* Mask or enable the fault event. */
	FUNC0(bp, phy, MDIO_PMA_DEVAD, alarm_ctrl_offset, &val);
	if (alarm_status & (1<<0))
		val &= ~(1<<0);
	else
		val |= (1<<0);
	FUNC1(bp, phy, MDIO_PMA_DEVAD, alarm_ctrl_offset, val);
}