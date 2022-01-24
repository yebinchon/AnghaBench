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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  broadcast; int /*<<< orphan*/  mtu; int /*<<< orphan*/  hard_header_len; int /*<<< orphan*/  type; int /*<<< orphan*/  header_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
			       struct net_device *port_dev)
{
	dev->header_ops	= port_dev->header_ops;
	dev->type = port_dev->type;
	dev->hard_header_len = port_dev->hard_header_len;
	dev->addr_len = port_dev->addr_len;
	dev->mtu = port_dev->mtu;
	FUNC1(dev->broadcast, port_dev->broadcast, port_dev->addr_len);
	FUNC0(dev, port_dev);
}