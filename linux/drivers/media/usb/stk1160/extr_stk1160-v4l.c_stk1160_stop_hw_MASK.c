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
struct stk1160 {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  udev; scalar_t__ alt; } ;

/* Variables and functions */
 scalar_t__ STK1160_DCTRL ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct stk1160*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static void FUNC4(struct stk1160 *dev)
{
	/* If the device is not physically present, there is nothing to do */
	if (!dev->udev)
		return;

	/* set alternate 0 */
	dev->alt = 0;
	FUNC0("setting alternate %d\n", dev->alt);
	FUNC2(dev->udev, 0, 0);

	/* Stop stk1160 */
	FUNC1(dev, STK1160_DCTRL, 0x00);
	FUNC1(dev, STK1160_DCTRL+3, 0x00);

	/* Stop saa711x */
	FUNC3(&dev->v4l2_dev, 0, video, s_stream, 0);
}