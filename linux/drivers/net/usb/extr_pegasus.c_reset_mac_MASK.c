#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int features; size_t dev_index; } ;
typedef  TYPE_1__ pegasus_t ;
typedef  int __u8 ;
typedef  int __u16 ;
struct TYPE_9__ {scalar_t__ vendor; } ;

/* Variables and functions */
 int DEFAULT_GPIO_SET ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  EthCtrl1 ; 
 int /*<<< orphan*/  Gpio0 ; 
 int /*<<< orphan*/  Gpio1 ; 
 int HAS_HOME_PNA ; 
 int REG_TIMEOUT ; 
 scalar_t__ VENDOR_DLINK ; 
 scalar_t__ VENDOR_ELCON ; 
 scalar_t__ VENDOR_LINKSYS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ loopback ; 
 scalar_t__ mii_mode ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* usb_dev_id ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int*) ; 

__attribute__((used)) static inline int FUNC4(pegasus_t *pegasus)
{
	__u8 data = 0x8;
	int i;

	FUNC2(pegasus, EthCtrl1, data);
	for (i = 0; i < REG_TIMEOUT; i++) {
		FUNC0(pegasus, EthCtrl1, 1, &data);
		if (~data & 0x08) {
			if (loopback)
				break;
			if (mii_mode && (pegasus->features & HAS_HOME_PNA))
				FUNC2(pegasus, Gpio1, 0x34);
			else
				FUNC2(pegasus, Gpio1, 0x26);
			FUNC2(pegasus, Gpio0, pegasus->features);
			FUNC2(pegasus, Gpio0, DEFAULT_GPIO_SET);
			break;
		}
	}
	if (i == REG_TIMEOUT)
		return -ETIMEDOUT;

	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_DLINK) {
		FUNC2(pegasus, Gpio0, 0x24);
		FUNC2(pegasus, Gpio0, 0x26);
	}
	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_ELCON) {
		__u16 auxmode;
		FUNC1(pegasus, 3, 0x1b, &auxmode);
		auxmode |= 4;
		FUNC3(pegasus, 3, 0x1b, &auxmode);
	}

	return 0;
}