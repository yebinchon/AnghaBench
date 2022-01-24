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
struct r8152 {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_TYPE_USB ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int /*<<< orphan*/  RX_THR_B ; 
 int /*<<< orphan*/  USB_RX_BUF_TH ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct r8152 *tp)
{
	if (FUNC5(RTL8152_UNPLUG, &tp->flags))
		return;

	FUNC4(tp, false);
	FUNC3(tp, false);
	FUNC1(tp, false);

	FUNC2(tp);
	FUNC0(tp, MCU_TYPE_USB, USB_RX_BUF_TH, RX_THR_B);

	FUNC1(tp, true);
	FUNC3(tp, true);
	FUNC4(tp, true);
}