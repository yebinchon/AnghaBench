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
struct rtl8169_private {scalar_t__ aspm_manageable; } ;

/* Variables and functions */
 int ASPM_en ; 
 int ClkReqEn ; 
 int /*<<< orphan*/  Config2 ; 
 int /*<<< orphan*/  Config5 ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp, bool enable)
{
	/* Don't enable ASPM in the chip if OS can't control ASPM */
	if (enable && tp->aspm_manageable) {
		FUNC1(tp, Config5, FUNC0(tp, Config5) | ASPM_en);
		FUNC1(tp, Config2, FUNC0(tp, Config2) | ClkReqEn);
	} else {
		FUNC1(tp, Config2, FUNC0(tp, Config2) & ~ClkReqEn);
		FUNC1(tp, Config5, FUNC0(tp, Config5) & ~ASPM_en);
	}

	FUNC2(10);
}