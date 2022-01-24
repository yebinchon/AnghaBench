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
 int EIO ; 
 int /*<<< orphan*/  PMT_CTL ; 
 int PMT_CTL_DEV_RDY ; 
 int FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev, int in_pm)
{
	int timeout = 0;

	do {
		u32 buf;
		int ret;

		ret = FUNC0(dev, PMT_CTL, &buf, in_pm);

		if (ret < 0) {
			FUNC2(dev->net, "Failed to read PMT_CTL: %d\n", ret);
			return ret;
		}

		if (buf & PMT_CTL_DEV_RDY)
			return 0;

		FUNC1(10);
		timeout++;
	} while (timeout < 100);

	FUNC2(dev->net, "timeout waiting for device ready\n");
	return -EIO;
}