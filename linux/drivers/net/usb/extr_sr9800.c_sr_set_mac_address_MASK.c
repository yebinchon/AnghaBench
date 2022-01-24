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
struct sr_data {int /*<<< orphan*/  mac_addr; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SR_CMD_WRITE_NODE_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *net, void *p)
{
	struct usbnet *dev = FUNC2(net);
	struct sr_data *data = (struct sr_data *)&dev->data;
	struct sockaddr *addr = p;

	if (FUNC3(net))
		return -EBUSY;
	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(net->dev_addr, addr->sa_data, ETH_ALEN);

	/* We use the 20 byte dev->data
	 * for our 6 byte mac buffer
	 * to avoid allocating memory that
	 * is tricky to free later
	 */
	FUNC1(data->mac_addr, addr->sa_data, ETH_ALEN);
	FUNC4(dev, SR_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
			   data->mac_addr);

	return 0;
}