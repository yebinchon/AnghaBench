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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int /*<<< orphan*/  const* dev_addr; } ;
struct mvpp2_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC1 (struct mvpp2_port*,int /*<<< orphan*/  const*,int) ; 
 struct mvpp2_port* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev, const u8 *da)
{
	struct mvpp2_port *port = FUNC2(dev);
	int err;

	/* Remove old parser entry */
	err = FUNC1(port, dev->dev_addr, false);
	if (err)
		return err;

	/* Add new parser entry */
	err = FUNC1(port, da, true);
	if (err)
		return err;

	/* Set addr in the device */
	FUNC0(dev->dev_addr, da);

	return 0;
}