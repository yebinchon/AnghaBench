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
struct bgmac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,void*) ; 
 int FUNC2 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bgmac* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net_dev, void *addr)
{
	struct bgmac *bgmac = FUNC4(net_dev);
	struct sockaddr *sa = addr;
	int ret;

	ret = FUNC2(net_dev, addr);
	if (ret < 0)
		return ret;

	FUNC3(net_dev->dev_addr, sa->sa_data);
	FUNC0(bgmac, net_dev->dev_addr);

	FUNC1(net_dev, addr);
	return 0;
}