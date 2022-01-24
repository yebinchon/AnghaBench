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
struct r592_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  R592_REG_MSC ; 
 int R592_REG_MSC_FIFO_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct r592_device*) ; 
 int FUNC3 (struct r592_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct r592_device *dev)
{
	if (FUNC3(dev, R592_REG_MSC) & R592_REG_MSC_FIFO_EMPTY)
		return 0;

	FUNC0("FIFO not ready, trying to reset the device");
	FUNC2(dev);

	if (FUNC3(dev, R592_REG_MSC) & R592_REG_MSC_FIFO_EMPTY)
		return 0;

	FUNC1("FIFO still not ready, giving up");
	return -EIO;
}