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
struct rtl8169_private {int /*<<< orphan*/  napi; scalar_t__ RxDescArray; struct net_device* dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NUM_RX_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct rtl8169_private *tp)
{
	struct net_device *dev = tp->dev;
	int i;

	FUNC0(&tp->napi);
	FUNC2(dev);
	FUNC9();

	FUNC4(tp);

	for (i = 0; i < NUM_RX_DESC; i++)
		FUNC6(tp->RxDescArray + i);

	FUNC7(tp);
	FUNC5(tp);

	FUNC1(&tp->napi);
	FUNC8(tp);
	FUNC3(dev);
}