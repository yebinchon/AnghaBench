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
typedef  int /*<<< orphan*/  u32 ;
struct r8152 {int /*<<< orphan*/  saved_wolopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRWECR_CONFIG ; 
 int /*<<< orphan*/  CRWECR_NORAML ; 
 int /*<<< orphan*/  LINK_OFF_WAKE_EN ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_CONFIG34 ; 
 int /*<<< orphan*/  PLA_CRWECR ; 
 int /*<<< orphan*/  WAKE_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct r8152 *tp, bool enable)
{
	if (enable) {
		u32 ocp_data;

		FUNC0(tp, WAKE_ANY);

		FUNC2(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);

		ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_CONFIG34);
		ocp_data |= LINK_OFF_WAKE_EN;
		FUNC3(tp, MCU_TYPE_PLA, PLA_CONFIG34, ocp_data);

		FUNC2(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);
	} else {
		u32 ocp_data;

		FUNC0(tp, tp->saved_wolopts);

		FUNC2(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_CONFIG);

		ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_CONFIG34);
		ocp_data &= ~LINK_OFF_WAKE_EN;
		FUNC3(tp, MCU_TYPE_PLA, PLA_CONFIG34, ocp_data);

		FUNC2(tp, MCU_TYPE_PLA, PLA_CRWECR, CRWECR_NORAML);
	}
}