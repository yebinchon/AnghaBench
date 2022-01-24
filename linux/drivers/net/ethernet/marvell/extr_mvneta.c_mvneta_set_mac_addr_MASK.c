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
struct mvneta_port {int rxq_def; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,void*) ; 
 int FUNC1 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 
 struct mvneta_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *addr)
{
	struct mvneta_port *pp = FUNC3(dev);
	struct sockaddr *sockaddr = addr;
	int ret;

	ret = FUNC1(dev, addr);
	if (ret < 0)
		return ret;
	/* Remove previous address table entry */
	FUNC2(pp, dev->dev_addr, -1);

	/* Set new addr in hw */
	FUNC2(pp, sockaddr->sa_data, pp->rxq_def);

	FUNC0(dev, addr);
	return 0;
}