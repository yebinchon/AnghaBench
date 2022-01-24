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
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERIAR ; 
 int ERIAR_MASK_1111 ; 
 int ERIAR_READ_CMD ; 
 int /*<<< orphan*/  ERIDR ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_eriar_cond ; 
 scalar_t__ FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static u32 FUNC3(struct rtl8169_private *tp, int addr, int type)
{
	FUNC1(tp, ERIAR, ERIAR_READ_CMD | type | ERIAR_MASK_1111 | addr);

	return FUNC2(tp, &rtl_eriar_cond, 100, 100) ?
		FUNC0(tp, ERIDR) : ~0;
}