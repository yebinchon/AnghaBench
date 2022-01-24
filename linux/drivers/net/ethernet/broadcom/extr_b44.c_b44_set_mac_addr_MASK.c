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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct b44 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B44_RXCONFIG ; 
 int EBUSY ; 
 int EINVAL ; 
 int RXCONFIG_CAM_ABSENT ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int FUNC1 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct b44* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *p)
{
	struct b44 *bp = FUNC4(dev);
	struct sockaddr *addr = p;
	u32 val;

	if (FUNC5(dev))
		return -EBUSY;

	if (!FUNC2(addr->sa_data))
		return -EINVAL;

	FUNC3(dev->dev_addr, addr->sa_data, dev->addr_len);

	FUNC6(&bp->lock);

	val = FUNC1(bp, B44_RXCONFIG);
	if (!(val & RXCONFIG_CAM_ABSENT))
		FUNC0(bp);

	FUNC7(&bp->lock);

	return 0;
}