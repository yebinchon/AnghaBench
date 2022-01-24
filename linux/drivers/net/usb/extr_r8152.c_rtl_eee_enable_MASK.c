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
struct r8152 {int version; int /*<<< orphan*/  eee_adv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_EEE_ADV ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  OCP_EEE_ADV ; 
#define  RTL_VER_01 136 
#define  RTL_VER_02 135 
#define  RTL_VER_03 134 
#define  RTL_VER_04 133 
#define  RTL_VER_05 132 
#define  RTL_VER_06 131 
#define  RTL_VER_07 130 
#define  RTL_VER_08 129 
#define  RTL_VER_09 128 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int) ; 

__attribute__((used)) static void FUNC4(struct r8152 *tp, bool enable)
{
	switch (tp->version) {
	case RTL_VER_01:
	case RTL_VER_02:
	case RTL_VER_07:
		if (enable) {
			FUNC1(tp, true);
			FUNC2(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV,
					tp->eee_adv);
		} else {
			FUNC1(tp, false);
			FUNC2(tp, MDIO_MMD_AN, MDIO_AN_EEE_ADV, 0);
		}
		break;
	case RTL_VER_03:
	case RTL_VER_04:
	case RTL_VER_05:
	case RTL_VER_06:
	case RTL_VER_08:
	case RTL_VER_09:
		if (enable) {
			FUNC3(tp, true);
			FUNC0(tp, OCP_EEE_ADV, tp->eee_adv);
		} else {
			FUNC3(tp, false);
			FUNC0(tp, OCP_EEE_ADV, 0);
		}
		break;
	default:
		break;
	}
}