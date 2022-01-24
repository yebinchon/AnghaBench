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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct usbnet {TYPE_1__ mii; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  MARVELL_LED_MANUAL ; 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct usbnet *dev, u16 speed)
{
	u16 reg = FUNC0(dev->net, dev->mii.phy_id, MARVELL_LED_MANUAL);

	FUNC2(dev->net, "marvell_led_status() read 0x%04x\n", reg);

	/* Clear out the center LED bits - 0x03F0 */
	reg &= 0xfc0f;

	switch (speed) {
		case SPEED_1000:
			reg |= 0x03e0;
			break;
		case SPEED_100:
			reg |= 0x03b0;
			break;
		default:
			reg |= 0x02f0;
	}

	FUNC2(dev->net, "marvell_led_status() writing 0x%04x\n", reg);
	FUNC1(dev->net, dev->mii.phy_id, MARVELL_LED_MANUAL, reg);

	return 0;
}