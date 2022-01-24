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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct l2t_entry {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct adapter* FUNC0 (struct net_device*) ; 
 struct l2t_entry* FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct l2t_entry *FUNC2(struct net_device *dev, u16 vlan,
					    u8 port, u8 *dmac)
{
	struct adapter *adap = FUNC0(dev);

	return FUNC1(adap, vlan, port, dmac);
}