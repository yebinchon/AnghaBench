#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; } ;
struct rtl8169_private {TYPE_1__ wk; } ;
typedef  enum rtl_flag { ____Placeholder_rtl_flag } rtl_flag ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rtl8169_private *tp, enum rtl_flag flag)
{
	if (!FUNC1(flag, tp->wk.flags))
		FUNC0(&tp->wk.work);
}