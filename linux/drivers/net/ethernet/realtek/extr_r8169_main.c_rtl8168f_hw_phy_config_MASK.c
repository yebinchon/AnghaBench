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
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*,int,int) ; 

__attribute__((used)) static void FUNC4(struct rtl8169_private *tp)
{
	/* For 4-corner performance improve */
	FUNC3(tp, 0x1f, 0x0005);
	FUNC3(tp, 0x05, 0x8b80);
	FUNC2(tp, 0x06, 0x0006, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);

	/* PHY auto speed down */
	FUNC3(tp, 0x1f, 0x0007);
	FUNC3(tp, 0x1e, 0x002d);
	FUNC2(tp, 0x18, 0x0010, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);
	FUNC2(tp, 0x14, 0x8000, 0x0000);

	/* Improve 10M EEE waveform */
	FUNC3(tp, 0x1f, 0x0005);
	FUNC3(tp, 0x05, 0x8b86);
	FUNC2(tp, 0x06, 0x0001, 0x0000);
	FUNC3(tp, 0x1f, 0x0000);

	FUNC0(tp);
	FUNC1(tp);
}