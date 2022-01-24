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
typedef  int /*<<< orphan*/  u32 ;
struct lan78xx_statstage {int dummy; } ;
struct lan78xx_net {int /*<<< orphan*/  net; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  USB_VENDOR_REQUEST_GET_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct lan78xx_statstage*) ; 
 struct lan78xx_statstage* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct lan78xx_net *dev,
			      struct lan78xx_statstage *data)
{
	int ret = 0;
	int i;
	struct lan78xx_statstage *stats;
	u32 *src;
	u32 *dst;

	stats = FUNC1(sizeof(*stats), GFP_KERNEL);
	if (!stats)
		return -ENOMEM;

	ret = FUNC5(dev->udev,
			      FUNC6(dev->udev, 0),
			      USB_VENDOR_REQUEST_GET_STATS,
			      USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			      0,
			      0,
			      (void *)stats,
			      sizeof(*stats),
			      USB_CTRL_SET_TIMEOUT);
	if (FUNC3(ret >= 0)) {
		src = (u32 *)stats;
		dst = (u32 *)data;
		for (i = 0; i < sizeof(*stats)/sizeof(u32); i++) {
			FUNC2(&src[i]);
			dst[i] = src[i];
		}
	} else {
		FUNC4(dev->net,
			    "Failed to read stat ret = 0x%x", ret);
	}

	FUNC0(stats);

	return ret;
}