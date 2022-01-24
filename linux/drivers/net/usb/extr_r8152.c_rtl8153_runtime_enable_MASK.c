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
struct r8152 {int version; } ;

/* Variables and functions */
#define  RTL_VER_03 131 
#define  RTL_VER_04 130 
#define  RTL_VER_05 129 
#define  RTL_VER_06 128 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int) ; 

__attribute__((used)) static void FUNC4(struct r8152 *tp, bool enable)
{
	if (enable) {
		FUNC1(tp, false);
		FUNC2(tp, false);
		FUNC0(tp, true);
		FUNC3(tp, true);
	} else {
		FUNC3(tp, false);
		FUNC0(tp, false);

		switch (tp->version) {
		case RTL_VER_03:
		case RTL_VER_04:
			break;
		case RTL_VER_05:
		case RTL_VER_06:
		default:
			FUNC2(tp, true);
			break;
		}

		FUNC1(tp, true);
	}
}