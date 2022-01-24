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
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, void *p)
{
	const struct sockaddr *addr = p;
	int err;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	err = FUNC1(dev, addr->sa_data);
	if (err) {
		/* Reconfigure parser accept the original MAC address */
		FUNC1(dev, dev->dev_addr);
		FUNC2(dev, "failed to change MAC address\n");
	}
	return err;
}