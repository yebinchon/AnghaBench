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
struct net_device {int* dev_addr; } ;
struct jme_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_RXUMA_HI ; 
 int /*<<< orphan*/  JME_RXUMA_LO ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int /*<<< orphan*/ ,int) ; 
 struct jme_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void
FUNC2(struct net_device *netdev)
{
	struct jme_adapter *jme = FUNC1(netdev);
	u32 val;

	val = (netdev->dev_addr[3] & 0xff) << 24 |
	      (netdev->dev_addr[2] & 0xff) << 16 |
	      (netdev->dev_addr[1] & 0xff) <<  8 |
	      (netdev->dev_addr[0] & 0xff);
	FUNC0(jme, JME_RXUMA_LO, val);
	val = (netdev->dev_addr[5] & 0xff) << 8 |
	      (netdev->dev_addr[4] & 0xff);
	FUNC0(jme, JME_RXUMA_HI, val);
}