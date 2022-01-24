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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct au1000_private {TYPE_1__* mac; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int MAC_RX_ENABLE ; 
 int MAC_TX_ENABLE ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct au1000_private*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct au1000_private *aup = FUNC1(dev);
	u32 reg;

	FUNC2(aup, hw, dev, "enable_rx_tx\n");

	reg = FUNC3(&aup->mac->control);
	reg |= (MAC_RX_ENABLE | MAC_TX_ENABLE);
	FUNC5(reg, &aup->mac->control);
	FUNC4(); /* drain writebuffer */
	FUNC0(10);
}