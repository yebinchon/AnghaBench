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
struct ucc_geth_private {int /*<<< orphan*/  lock; TYPE_1__* ug_regs; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  addr_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  macstnaddr2; int /*<<< orphan*/  macstnaddr1; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ucc_geth_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *p)
{
	struct ucc_geth_private *ugeth = FUNC3(dev);
	struct sockaddr *addr = p;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(dev->dev_addr, addr->sa_data, dev->addr_len);

	/*
	 * If device is not running, we will set mac addr register
	 * when opening the device.
	 */
	if (!FUNC4(dev))
		return 0;

	FUNC5(&ugeth->lock);
	FUNC0(dev->dev_addr[0],
				   dev->dev_addr[1],
				   dev->dev_addr[2],
				   dev->dev_addr[3],
				   dev->dev_addr[4],
				   dev->dev_addr[5],
				   &ugeth->ug_regs->macstnaddr1,
				   &ugeth->ug_regs->macstnaddr2);
	FUNC6(&ugeth->lock);

	return 0;
}