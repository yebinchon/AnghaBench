#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct adapter {int /*<<< orphan*/  tp; TYPE_2__* port; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int hw_features; } ;

/* Variables and functions */
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapter)
{
	if (adapter->port[0].dev->hw_features & NETIF_F_TSO)
		FUNC0(adapter->tp, 1);	/* for TSO only */
	FUNC1(adapter->tp, 1);
}