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
struct net_device {unsigned char* dev_addr; } ;
struct bmac_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADD0 ; 
 int /*<<< orphan*/  MADD1 ; 
 int /*<<< orphan*/  MADD2 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,unsigned short) ; 
 struct bmac_data* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *addr)
{
	struct bmac_data *bp = FUNC2(dev);
	unsigned char *p = addr;
	unsigned short *pWord16;
	unsigned long flags;
	int i;

	FUNC0(("bmac: enter set_address\n"));
	FUNC3(&bp->lock, flags);

	for (i = 0; i < 6; ++i) {
		dev->dev_addr[i] = p[i];
	}
	/* load up the hardware address */
	pWord16  = (unsigned short *)dev->dev_addr;
	FUNC1(dev, MADD0, *pWord16++);
	FUNC1(dev, MADD1, *pWord16++);
	FUNC1(dev, MADD2, *pWord16);

	FUNC4(&bp->lock, flags);
	FUNC0(("bmac: exit set_address\n"));
	return 0;
}