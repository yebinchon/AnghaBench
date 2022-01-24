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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct rtl8169_private {TYPE_1__ wk; int /*<<< orphan*/  napi; int /*<<< orphan*/  phydev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL_FLAG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rtl8169_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct rtl8169_private *tp = FUNC2(dev);

	if (!FUNC4(dev))
		return;

	FUNC5(tp->phydev);
	FUNC3(dev);

	FUNC6(tp);
	FUNC1(&tp->napi);
	/* Clear all task flags */
	FUNC0(tp->wk.flags, RTL_FLAG_MAX);

	FUNC8(tp);

	FUNC7(tp);
}