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
struct rtl8169_private {scalar_t__ mac_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEE_LED ; 
 int /*<<< orphan*/  ERIAR_MASK_1111 ; 
 scalar_t__ RTL_GIGA_MAC_VER_38 ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp)
{
	/* Adjust EEE LED frequency */
	if (tp->mac_version != RTL_GIGA_MAC_VER_38)
		FUNC1(tp, EEE_LED, FUNC0(tp, EEE_LED) & ~0x07);

	FUNC2(tp, 0x1b0, ERIAR_MASK_1111, 0x0003);
}