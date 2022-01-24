#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usbnet {TYPE_1__* net; int /*<<< orphan*/  data; } ;
struct asix_data {int /*<<< orphan*/  mac_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX88772_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  AX_CMD_WRITE_NODE_ID ; 
 int /*<<< orphan*/  AX_DEFAULT_RX_CTL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev)
{
	struct asix_data *data = (struct asix_data *)&dev->data;
	int ret;

	/* Rewrite MAC address */
	FUNC3(data->mac_addr, dev->net->dev_addr);
	ret = FUNC0(dev, AX_CMD_WRITE_NODE_ID, 0, 0,
			     ETH_ALEN, data->mac_addr, 0);
	if (ret < 0)
		goto out;

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	ret = FUNC2(dev, AX_DEFAULT_RX_CTL, 0);
	if (ret < 0)
		goto out;

	ret = FUNC1(dev, AX88772_MEDIUM_DEFAULT, 0);
	if (ret < 0)
		goto out;

	return 0;

out:
	return ret;
}