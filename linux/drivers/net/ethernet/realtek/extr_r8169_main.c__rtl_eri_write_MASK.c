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
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERIAR ; 
 int ERIAR_WRITE_CMD ; 
 int /*<<< orphan*/  ERIDR ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtl_eriar_cond ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp, int addr, u32 mask,
			   u32 val, int type)
{
	FUNC0((addr & 3) || (mask == 0));
	FUNC1(tp, ERIDR, val);
	FUNC1(tp, ERIAR, ERIAR_WRITE_CMD | type | mask | addr);

	FUNC2(tp, &rtl_eriar_cond, 100, 100);
}