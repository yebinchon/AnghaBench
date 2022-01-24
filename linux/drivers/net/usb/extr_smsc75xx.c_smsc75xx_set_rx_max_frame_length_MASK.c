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
typedef  int u32 ;
struct usbnet {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_RX ; 
 int MAC_RX_MAX_SIZE ; 
 int MAC_RX_MAX_SIZE_SHIFT ; 
 int MAC_RX_RXEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev, int size)
{
	int ret = 0;
	u32 buf;
	bool rxenabled;

	ret = FUNC1(dev, MAC_RX, &buf);
	if (ret < 0) {
		FUNC0(dev->net, "Failed to read MAC_RX: %d\n", ret);
		return ret;
	}

	rxenabled = ((buf & MAC_RX_RXEN) != 0);

	if (rxenabled) {
		buf &= ~MAC_RX_RXEN;
		ret = FUNC2(dev, MAC_RX, buf);
		if (ret < 0) {
			FUNC0(dev->net, "Failed to write MAC_RX: %d\n", ret);
			return ret;
		}
	}

	/* add 4 to size for FCS */
	buf &= ~MAC_RX_MAX_SIZE;
	buf |= (((size + 4) << MAC_RX_MAX_SIZE_SHIFT) & MAC_RX_MAX_SIZE);

	ret = FUNC2(dev, MAC_RX, buf);
	if (ret < 0) {
		FUNC0(dev->net, "Failed to write MAC_RX: %d\n", ret);
		return ret;
	}

	if (rxenabled) {
		buf |= MAC_RX_RXEN;
		ret = FUNC2(dev, MAC_RX, buf);
		if (ret < 0) {
			FUNC0(dev->net, "Failed to write MAC_RX: %d\n", ret);
			return ret;
		}
	}

	return 0;
}