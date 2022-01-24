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
 int EBUSY ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *addr)
{
	struct sockaddr *address = addr;

	if (FUNC3(dev))
		return -EBUSY;
	if (!FUNC2(address->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(dev->dev_addr, address->sa_data);
	return FUNC0(dev);
}