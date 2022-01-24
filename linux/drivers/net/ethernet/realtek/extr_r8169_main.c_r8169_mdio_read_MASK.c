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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PHYAR ; 
 int FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_phyar_cond ; 
 scalar_t__ FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rtl8169_private *tp, int reg)
{
	int value;

	FUNC1(tp, PHYAR, 0x0 | (reg & 0x1f) << 16);

	value = FUNC2(tp, &rtl_phyar_cond, 25, 20) ?
		FUNC0(tp, PHYAR) & 0xffff : -ETIMEDOUT;

	/*
	 * According to hardware specs a 20us delay is required after read
	 * complete indication, but before sending next command.
	 */
	FUNC3(20);

	return value;
}