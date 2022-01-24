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
struct kaweth_device {scalar_t__ packet_filter_bitmap; int /*<<< orphan*/  net; TYPE_1__* intf; int /*<<< orphan*/  scratch; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KAWETH_COMMAND_SET_PACKET_FILTER ; 
 int /*<<< orphan*/  KAWETH_CONTROL_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct kaweth_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kaweth_device *kaweth)
{
	int result;
	__u16 packet_filter_bitmap = kaweth->packet_filter_bitmap;

	kaweth->packet_filter_bitmap = 0;
	if (packet_filter_bitmap == 0)
		return;

	if (FUNC1())
		return;

	result = FUNC2(kaweth,
				FUNC4(kaweth->dev, 0),
				KAWETH_COMMAND_SET_PACKET_FILTER,
				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
				packet_filter_bitmap,
				0,
				(void *)&kaweth->scratch,
				0,
				KAWETH_CONTROL_TIMEOUT);

	if(result < 0) {
		FUNC0(&kaweth->intf->dev, "Failed to set Rx mode: %d\n",
			result);
	}
	else {
		FUNC3(kaweth->net, "Set Rx mode to %d\n",
			   packet_filter_bitmap);
	}
}