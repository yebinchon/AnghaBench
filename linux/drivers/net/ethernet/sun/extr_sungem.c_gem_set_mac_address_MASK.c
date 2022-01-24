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
struct net_device {unsigned char* dev_addr; int /*<<< orphan*/  addr_len; } ;
struct gem {scalar_t__ regs; int /*<<< orphan*/  cell_enabled; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 scalar_t__ MAC_ADDR0 ; 
 scalar_t__ MAC_ADDR1 ; 
 scalar_t__ MAC_ADDR2 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gem* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *addr)
{
	struct sockaddr *macaddr = (struct sockaddr *) addr;
	struct gem *gp = FUNC3(dev);
	unsigned char *e = &dev->dev_addr[0];

	if (!FUNC1(macaddr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(dev->dev_addr, macaddr->sa_data, dev->addr_len);

	/* We'll just catch it later when the device is up'd or resumed */
	if (!FUNC5(dev) || !FUNC4(dev))
		return 0;

	/* Better safe than sorry... */
	if (FUNC0(!gp->cell_enabled))
		return 0;

	FUNC6((e[4] << 8) | e[5], gp->regs + MAC_ADDR0);
	FUNC6((e[2] << 8) | e[3], gp->regs + MAC_ADDR1);
	FUNC6((e[0] << 8) | e[1], gp->regs + MAC_ADDR2);

	return 0;
}