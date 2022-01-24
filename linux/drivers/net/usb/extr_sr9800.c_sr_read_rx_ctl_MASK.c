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
typedef  int u16 ;
struct usbnet {int /*<<< orphan*/  net; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  SR_CMD_READ_RX_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC3(struct usbnet *dev)
{
	__le16 v;
	int ret;

	ret = FUNC2(dev, SR_CMD_READ_RX_CTL, 0, 0, 2, &v);
	if (ret < 0) {
		FUNC1(dev->net, "Error reading RX_CTL register:%02x\n",
			   ret);
		goto out;
	}

	ret = FUNC0(v);
out:
	return ret;
}