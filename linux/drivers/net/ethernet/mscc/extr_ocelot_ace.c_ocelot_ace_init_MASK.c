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
struct vcap_data {int dummy; } ;
struct ocelot {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_2__ {int /*<<< orphan*/  action_count; int /*<<< orphan*/  entry_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_POL_CIR_CFG ; 
 int /*<<< orphan*/  ANA_POL_CIR_STATE ; 
 int /*<<< orphan*/  ANA_POL_MODE_CFG ; 
 int /*<<< orphan*/  ANA_POL_PIR_CFG ; 
 int /*<<< orphan*/  ANA_POL_PIR_STATE ; 
 int /*<<< orphan*/  OCELOT_POLICER_DISCARD ; 
 int /*<<< orphan*/  S2_CORE_MV_CFG ; 
 int /*<<< orphan*/  VCAP_CMD_INITIALIZE ; 
 int VCAP_SEL_ACTION ; 
 int VCAP_SEL_COUNTER ; 
 int VCAP_SEL_ENTRY ; 
 int /*<<< orphan*/  acl_block ; 
 int /*<<< orphan*/  FUNC0 (struct vcap_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ocelot*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocelot*,struct vcap_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ocelot*,struct vcap_data*) ; 
 TYPE_1__ vcap_is2 ; 

int FUNC7(struct ocelot *ocelot)
{
	struct vcap_data data;

	FUNC0(&data, 0, sizeof(data));
	FUNC6(ocelot, &data);
	FUNC2(ocelot, vcap_is2.entry_count, S2_CORE_MV_CFG);
	FUNC5(ocelot, 0, VCAP_CMD_INITIALIZE, VCAP_SEL_ENTRY);

	FUNC4(ocelot, &data);
	FUNC2(ocelot, vcap_is2.action_count, S2_CORE_MV_CFG);
	FUNC5(ocelot, 0, VCAP_CMD_INITIALIZE,
		 VCAP_SEL_ACTION | VCAP_SEL_COUNTER);

	/* Create a policer that will drop the frames for the cpu.
	 * This policer will be used as action in the acl rules to drop
	 * frames.
	 */
	FUNC3(ocelot, 0x299, ANA_POL_MODE_CFG,
			 OCELOT_POLICER_DISCARD);
	FUNC3(ocelot, 0x1, ANA_POL_PIR_CFG,
			 OCELOT_POLICER_DISCARD);
	FUNC3(ocelot, 0x3fffff, ANA_POL_PIR_STATE,
			 OCELOT_POLICER_DISCARD);
	FUNC3(ocelot, 0x0, ANA_POL_CIR_CFG,
			 OCELOT_POLICER_DISCARD);
	FUNC3(ocelot, 0x3fffff, ANA_POL_CIR_STATE,
			 OCELOT_POLICER_DISCARD);

	acl_block = FUNC1(ocelot);

	return 0;
}