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
struct vcap_data {int dummy; } ;
typedef  enum ocelot_ace_action { ____Placeholder_ocelot_ace_action } ocelot_ace_action ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_COPY_ENA ; 
 int /*<<< orphan*/  CPU_QU_NUM ; 
 int /*<<< orphan*/  MASK_MODE ; 
#define  OCELOT_ACL_ACTION_DROP 129 
#define  OCELOT_ACL_ACTION_TRAP 128 
 int OCELOT_POLICER_DISCARD ; 
 int /*<<< orphan*/  POLICE_ENA ; 
 int /*<<< orphan*/  POLICE_IDX ; 
 int /*<<< orphan*/  PORT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct vcap_data *data,
			   enum ocelot_ace_action action)
{
	switch (action) {
	case OCELOT_ACL_ACTION_DROP:
		FUNC0(PORT_MASK, 0x0);
		FUNC0(MASK_MODE, 0x1);
		FUNC0(POLICE_ENA, 0x1);
		FUNC0(POLICE_IDX, OCELOT_POLICER_DISCARD);
		FUNC0(CPU_QU_NUM, 0x0);
		FUNC0(CPU_COPY_ENA, 0x0);
		break;
	case OCELOT_ACL_ACTION_TRAP:
		FUNC0(PORT_MASK, 0x0);
		FUNC0(MASK_MODE, 0x1);
		FUNC0(POLICE_ENA, 0x0);
		FUNC0(POLICE_IDX, 0x0);
		FUNC0(CPU_QU_NUM, 0x0);
		FUNC0(CPU_COPY_ENA, 0x1);
		break;
	}
}