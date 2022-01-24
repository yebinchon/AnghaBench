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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERIAR_OOB ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct rtl8169_private *tp, u8 mask, u16 reg)
{
	return FUNC0(tp, reg, ERIAR_OOB);
}