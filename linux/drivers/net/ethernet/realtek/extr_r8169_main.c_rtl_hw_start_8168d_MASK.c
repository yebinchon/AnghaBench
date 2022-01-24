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
struct rtl8169_private {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ ETH_DATA_LEN ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_READRQ_4096B ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rtl8169_private *tp)
{
	FUNC1(tp);

	FUNC0(tp);

	if (tp->dev->mtu <= ETH_DATA_LEN)
		FUNC2(tp, PCI_EXP_DEVCTL_READRQ_4096B);
}