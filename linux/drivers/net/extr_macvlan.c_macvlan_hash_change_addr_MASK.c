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
struct macvlan_dev {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct macvlan_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct macvlan_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct macvlan_dev *vlan,
					const unsigned char *addr)
{
	FUNC1(vlan, true);
	/* Now that we are unhashed it is safe to change the device
	 * address without confusing packet delivery.
	 */
	FUNC2(vlan->dev->dev_addr, addr, ETH_ALEN);
	FUNC0(vlan);
}