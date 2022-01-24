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
typedef  int u8 ;
struct usbnet {int /*<<< orphan*/  phy_mutex; int /*<<< orphan*/  net; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  DM_SHARED_ADDR ; 
 int /*<<< orphan*/  DM_SHARED_CTRL ; 
 int /*<<< orphan*/  DM_SHARED_DATA ; 
 int DM_TIMEOUT ; 
 int EIO ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct usbnet *dev, int phy, u8 reg, __le16 *value)
{
	int ret, i;

	FUNC3(&dev->phy_mutex);

	FUNC2(dev, DM_SHARED_ADDR, phy ? (reg | 0x40) : reg);
	FUNC2(dev, DM_SHARED_CTRL, phy ? 0xc : 0x4);

	for (i = 0; i < DM_TIMEOUT; i++) {
		u8 tmp = 0;

		FUNC7(1);
		ret = FUNC1(dev, DM_SHARED_CTRL, &tmp);
		if (ret < 0)
			goto out;

		/* ready */
		if ((tmp & 1) == 0)
			break;
	}

	if (i == DM_TIMEOUT) {
		FUNC6(dev->net, "%s read timed out!\n", phy ? "phy" : "eeprom");
		ret = -EIO;
		goto out;
	}

	FUNC2(dev, DM_SHARED_CTRL, 0x0);
	ret = FUNC0(dev, DM_SHARED_DATA, 2, value);

	FUNC5(dev->net, "read shared %d 0x%02x returned 0x%04x, %d\n",
		   phy, reg, *value, ret);

 out:
	FUNC4(&dev->phy_mutex);
	return ret;
}