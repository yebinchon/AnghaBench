#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zorro_device_id {int dummy; } ;
struct TYPE_4__ {unsigned long start; } ;
struct zorro_dev {scalar_t__ id; TYPE_1__ resource; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ id; unsigned long offset; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int NE_IO_EXTENT ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* cards ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zorro_dev*,struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct zorro_dev *z,
			      const struct zorro_device_id *ent)
{
	struct net_device *dev;
	unsigned long board, ioaddr;
	int err, i;

	for (i = FUNC0(cards) - 1; i >= 0; i--)
		if (z->id == cards[i].id)
			break;
	if (i < 0)
		return -ENODEV;

	board = z->resource.start;
	ioaddr = board + cards[i].offset;
	dev = FUNC2(0);
	if (!dev)
		return -ENOMEM;
	if (!FUNC5(ioaddr, NE_IO_EXTENT * 2, DRV_NAME)) {
		FUNC3(dev);
		return -EBUSY;
	}
	err = FUNC6(dev, board, cards[i].name, FUNC1(ioaddr));
	if (err) {
		FUNC4(ioaddr, NE_IO_EXTENT * 2);
		FUNC3(dev);
		return err;
	}
	FUNC7(z, dev);
	return 0;
}