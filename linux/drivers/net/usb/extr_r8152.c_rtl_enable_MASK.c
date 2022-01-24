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
typedef  int u32 ;
struct r8152 {int version; } ;

/* Variables and functions */
 int CR_RE ; 
 int CR_TE ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_CR ; 
#define  RTL_VER_08 129 
#define  RTL_VER_09 128 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int) ; 

__attribute__((used)) static int FUNC5(struct r8152 *tp)
{
	u32 ocp_data;

	FUNC2(tp);

	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_CR);
	ocp_data |= CR_RE | CR_TE;
	FUNC1(tp, MCU_TYPE_PLA, PLA_CR, ocp_data);

	switch (tp->version) {
	case RTL_VER_08:
	case RTL_VER_09:
		FUNC3(tp);
		break;
	default:
		break;
	}

	FUNC4(tp, false);

	return 0;
}