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
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct usbnet {TYPE_1__ mii; int /*<<< orphan*/  net; int /*<<< orphan*/  data; } ;
struct asix_data {int ledmode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev)
{
	struct asix_data *data = (struct asix_data *)&dev->data;

	FUNC2(dev->net, "rtl8211cl_phy_init()\n");

	FUNC1 (dev->net, dev->mii.phy_id, 0x1f, 0x0005);
	FUNC1 (dev->net, dev->mii.phy_id, 0x0c, 0);
	FUNC1 (dev->net, dev->mii.phy_id, 0x01,
		FUNC0 (dev->net, dev->mii.phy_id, 0x01) | 0x0080);
	FUNC1 (dev->net, dev->mii.phy_id, 0x1f, 0);

	if (data->ledmode == 12) {
		FUNC1 (dev->net, dev->mii.phy_id, 0x1f, 0x0002);
		FUNC1 (dev->net, dev->mii.phy_id, 0x1a, 0x00cb);
		FUNC1 (dev->net, dev->mii.phy_id, 0x1f, 0);
	}

	return 0;
}