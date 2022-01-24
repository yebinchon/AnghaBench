#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct vub300_mmc_host {TYPE_1__* udev; } ;
struct mmc_ios {int clock; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  SET_CLOCK_SPEED ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vub300_mmc_host *vub300, u8 buf[8],
			      struct mmc_ios *ios)
{
	int buf_array_size = 8; /* ARRAY_SIZE(buf) does not work !!! */
	int retval;
	u32 kHzClock;
	if (ios->clock >= 48000000)
		kHzClock = 48000;
	else if (ios->clock >= 24000000)
		kHzClock = 24000;
	else if (ios->clock >= 20000000)
		kHzClock = 20000;
	else if (ios->clock >= 15000000)
		kHzClock = 15000;
	else if (ios->clock >= 200000)
		kHzClock = 200;
	else
		kHzClock = 0;
	{
		int i;
		u64 c = kHzClock;
		for (i = 0; i < buf_array_size; i++) {
			buf[i] = c;
			c >>= 8;
		}
	}
	retval =
		FUNC2(vub300->udev, FUNC3(vub300->udev, 0),
				SET_CLOCK_SPEED,
				USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
				0x00, 0x00, buf, buf_array_size, HZ);
	if (retval != 8) {
		FUNC1(&vub300->udev->dev, "SET_CLOCK_SPEED"
			" %dkHz failed with retval=%d\n", kHzClock, retval);
	} else {
		FUNC0(&vub300->udev->dev, "SET_CLOCK_SPEED"
			" %dkHz\n", kHzClock);
	}
}