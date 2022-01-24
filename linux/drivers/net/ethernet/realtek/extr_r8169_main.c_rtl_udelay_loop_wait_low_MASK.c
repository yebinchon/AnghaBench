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
struct rtl_cond {int dummy; } ;
struct rtl8169_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtl8169_private*,struct rtl_cond const*,int /*<<< orphan*/ ,unsigned int,int,int) ; 
 int /*<<< orphan*/  rtl_udelay ; 

__attribute__((used)) static bool FUNC1(struct rtl8169_private *tp,
				     const struct rtl_cond *c,
				     unsigned int d, int n)
{
	return FUNC0(tp, c, rtl_udelay, d, n, false);
}