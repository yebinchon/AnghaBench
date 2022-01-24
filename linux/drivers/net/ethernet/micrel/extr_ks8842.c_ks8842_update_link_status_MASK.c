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
struct net_device {int dummy; } ;
struct ks8842_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_P1MBSR ; 
 int FUNC0 (struct ks8842_adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
	struct ks8842_adapter *adapter)
{
	/* check the status of the link */
	if (FUNC0(adapter, 45, REG_P1MBSR) & 0x4) {
		FUNC2(netdev);
		FUNC4(netdev);
	} else {
		FUNC3(netdev);
		FUNC1(netdev);
	}
}