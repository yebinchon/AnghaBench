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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct jme_adapter {int /*<<< orphan*/  macaddr_lock; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  JME_RXUMA_HI ; 
 int /*<<< orphan*/  JME_RXUMA_LO ; 
 int FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC2(netdev);
	unsigned char macaddr[ETH_ALEN];
	u32 val;

	FUNC3(&jme->macaddr_lock);
	val = FUNC0(jme, JME_RXUMA_LO);
	macaddr[0] = (val >>  0) & 0xFF;
	macaddr[1] = (val >>  8) & 0xFF;
	macaddr[2] = (val >> 16) & 0xFF;
	macaddr[3] = (val >> 24) & 0xFF;
	val = FUNC0(jme, JME_RXUMA_HI);
	macaddr[4] = (val >>  0) & 0xFF;
	macaddr[5] = (val >>  8) & 0xFF;
	FUNC1(netdev->dev_addr, macaddr, ETH_ALEN);
	FUNC4(&jme->macaddr_lock);
}