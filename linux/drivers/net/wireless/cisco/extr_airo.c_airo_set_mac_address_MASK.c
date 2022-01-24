#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; struct airo_info* ml_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  macAddr; } ;
struct airo_info {TYPE_3__* wifidev; TYPE_2__* dev; int /*<<< orphan*/  flags; TYPE_1__ config; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, void *p)
{
	struct airo_info *ai = dev->ml_priv;
	struct sockaddr *addr = p;

	FUNC3(ai, 1);
	FUNC2 (ai->config.macAddr, addr->sa_data, dev->addr_len);
	FUNC4 (FLAG_COMMIT, &ai->flags);
	FUNC0(ai, 1);
	FUNC5 (ai, 1);
	FUNC1(ai, 1);
	FUNC2 (ai->dev->dev_addr, addr->sa_data, dev->addr_len);
	if (ai->wifidev)
		FUNC2 (ai->wifidev->dev_addr, addr->sa_data, dev->addr_len);
	return 0;
}