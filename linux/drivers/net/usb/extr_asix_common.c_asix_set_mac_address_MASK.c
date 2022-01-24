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
struct usbnet {int /*<<< orphan*/  data; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct asix_data {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_WRITE_NODE_ID ; 
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

int FUNC5(struct net_device *net, void *p)
{
	struct usbnet *dev = FUNC3(net);
	struct asix_data *data = (struct asix_data *)&dev->data;
	struct sockaddr *addr = p;

	if (FUNC4(net))
		return -EBUSY;
	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(net->dev_addr, addr->sa_data, ETH_ALEN);

	/* We use the 20 byte dev->data
	 * for our 6 byte mac buffer
	 * to avoid allocating memory that
	 * is tricky to free later */
	FUNC2(data->mac_addr, addr->sa_data, ETH_ALEN);
	FUNC0(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
							data->mac_addr);

	return 0;
}