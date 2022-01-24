#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct zorro_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  er_SerialNumber; } ;
struct TYPE_3__ {unsigned long start; } ;
struct zorro_dev {TYPE_2__ rom; TYPE_1__ resource; } ;
struct resource {int /*<<< orphan*/  name; } ;
struct net_device {int* dev_addr; unsigned long base_addr; unsigned long mem_start; int mem_end; int watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; } ;
struct ariadne_private {int dummy; } ;
struct Am79C960 {int dummy; } ;

/* Variables and functions */
 unsigned long ARIADNE_LANCE ; 
 unsigned long ARIADNE_RAM ; 
 int ARIADNE_RAM_SIZE ; 
 int EBUSY ; 
 int ENOMEM ; 
 int HZ ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  ariadne_netdev_ops ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,unsigned long,int*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int) ; 
 struct resource* FUNC7 (unsigned long,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct zorro_dev*,struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct zorro_dev *z,
			    const struct zorro_device_id *ent)
{
	unsigned long board = z->resource.start;
	unsigned long base_addr = board + ARIADNE_LANCE;
	unsigned long mem_start = board + ARIADNE_RAM;
	struct resource *r1, *r2;
	struct net_device *dev;
	u32 serial;
	int err;

	r1 = FUNC7(base_addr, sizeof(struct Am79C960), "Am79C960");
	if (!r1)
		return -EBUSY;
	r2 = FUNC7(mem_start, ARIADNE_RAM_SIZE, "RAM");
	if (!r2) {
		FUNC6(base_addr, sizeof(struct Am79C960));
		return -EBUSY;
	}

	dev = FUNC1(sizeof(struct ariadne_private));
	if (dev == NULL) {
		FUNC6(base_addr, sizeof(struct Am79C960));
		FUNC6(mem_start, ARIADNE_RAM_SIZE);
		return -ENOMEM;
	}

	r1->name = dev->name;
	r2->name = dev->name;

	serial = FUNC2(z->rom.er_SerialNumber);
	dev->dev_addr[0] = 0x00;
	dev->dev_addr[1] = 0x60;
	dev->dev_addr[2] = 0x30;
	dev->dev_addr[3] = (serial >> 16) & 0xff;
	dev->dev_addr[4] = (serial >> 8) & 0xff;
	dev->dev_addr[5] = serial & 0xff;
	dev->base_addr = (unsigned long)FUNC0(base_addr);
	dev->mem_start = (unsigned long)FUNC0(mem_start);
	dev->mem_end = dev->mem_start + ARIADNE_RAM_SIZE;

	dev->netdev_ops = &ariadne_netdev_ops;
	dev->watchdog_timeo = 5 * HZ;

	err = FUNC5(dev);
	if (err) {
		FUNC6(base_addr, sizeof(struct Am79C960));
		FUNC6(mem_start, ARIADNE_RAM_SIZE);
		FUNC3(dev);
		return err;
	}
	FUNC8(z, dev);

	FUNC4(dev, "Ariadne at 0x%08lx, Ethernet Address %pM\n",
		    board, dev->dev_addr);

	return 0;
}