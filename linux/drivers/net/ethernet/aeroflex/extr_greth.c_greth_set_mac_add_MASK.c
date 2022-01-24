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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int* dev_addr; int /*<<< orphan*/  addr_len; } ;
struct greth_regs {int /*<<< orphan*/  esa_lsb; int /*<<< orphan*/  esa_msb; } ;
struct greth_private {struct greth_regs* regs; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct greth_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct greth_private *greth;
	struct greth_regs *regs;

	greth = FUNC3(dev);
	regs = greth->regs;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(dev->dev_addr, addr->sa_data, dev->addr_len);
	FUNC0(regs->esa_msb, dev->dev_addr[0] << 8 | dev->dev_addr[1]);
	FUNC0(regs->esa_lsb, dev->dev_addr[2] << 24 | dev->dev_addr[3] << 16 |
		      dev->dev_addr[4] << 8 | dev->dev_addr[5]);

	return 0;
}