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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct enetc_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENETC_PSIVLAN_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct enetc_hw *hw, int si, u16 vlan, u8 qos)
{
	u32 val = 0;

	if (vlan)
		val = ENETC_PSIVLAN_EN | FUNC1(qos) | vlan;

	FUNC2(hw, FUNC0(si), val);
}