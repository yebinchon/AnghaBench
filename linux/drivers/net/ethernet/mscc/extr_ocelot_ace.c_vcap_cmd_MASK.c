#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ocelot {int dummy; } ;
struct TYPE_2__ {scalar_t__ entry_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  S2_CORE_UPDATE_CTRL ; 
 int S2_CORE_UPDATE_CTRL_UPDATE_ACTION_DIS ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int S2_CORE_UPDATE_CTRL_UPDATE_CNT_DIS ; 
 int S2_CORE_UPDATE_CTRL_UPDATE_ENTRY_DIS ; 
 int S2_CORE_UPDATE_CTRL_UPDATE_SHOT ; 
 int VCAP_SEL_ACTION ; 
 int VCAP_SEL_COUNTER ; 
 int VCAP_SEL_ENTRY ; 
 int /*<<< orphan*/  FUNC2 (struct ocelot*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ocelot*,int,int,int,int) ; 
 TYPE_1__ vcap_is2 ; 
 int /*<<< orphan*/  vcap_s2_read_update_ctrl ; 

__attribute__((used)) static void FUNC4(struct ocelot *oc, u16 ix, int cmd, int sel)
{
	u32 value = (FUNC1(cmd) |
		     FUNC0(ix) |
		     S2_CORE_UPDATE_CTRL_UPDATE_SHOT);

	if ((sel & VCAP_SEL_ENTRY) && ix >= vcap_is2.entry_count)
		return;

	if (!(sel & VCAP_SEL_ENTRY))
		value |= S2_CORE_UPDATE_CTRL_UPDATE_ENTRY_DIS;

	if (!(sel & VCAP_SEL_ACTION))
		value |= S2_CORE_UPDATE_CTRL_UPDATE_ACTION_DIS;

	if (!(sel & VCAP_SEL_COUNTER))
		value |= S2_CORE_UPDATE_CTRL_UPDATE_CNT_DIS;

	FUNC2(oc, value, S2_CORE_UPDATE_CTRL);
	FUNC3(vcap_s2_read_update_ctrl, oc, value,
				(value & S2_CORE_UPDATE_CTRL_UPDATE_SHOT) == 0,
				10, 100000);
}